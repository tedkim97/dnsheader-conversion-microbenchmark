// extern crate test;

/// A logical representation of a DNS message header defined in RFC1035
/// These values are specifically taken from RFC6895
pub struct DnsHeader {
    pub id: u16,
    pub qr: bool,
    pub opcode: u8,
    pub aa: bool,
    pub tc: bool,
    pub rd: bool,
    pub ra: bool,
    pub ad: bool,
    pub cd: bool,
    pub rcode: u8,
    pub qdcount: u16,
    pub ancount: u16,
    pub nscount: u16,
    pub arcount: u16,
}

mod dns_header_masks {
    pub const QR: u16 = 0b1000_0000_0000_0000;
    pub const AA: u16 = 0b0000_0100_0000_0000;
    pub const TC: u16 = 0b0000_0010_0000_0000;
    pub const RD: u16 = 0b0000_0001_0000_0000;
    pub const RA: u16 = 0b0000_0000_1000_0000;
    pub const AD: u16 = 0b0000_0000_0010_0000;
    pub const CD: u16 = 0b0000_0000_0001_0000;
}

/// Converts a logical representation of a DNS message header into its wire 
/// format without branches.
/// If the provided size of the array is too slow, this will cause a panic
pub fn convert_to_wire_format_branchless(header: &DnsHeader, bytes: &mut [u8]) {
    // Serialize ID
    [bytes[0], bytes[1]] = header.id.to_be_bytes();
    // Serialize Flags
    let mut flags: u16 = 0;
    flags |= dns_header_masks::QR * (header.qr as u16);
    flags |= u16::from(header.opcode) << 11;
    flags |= dns_header_masks::AA * (header.aa as u16);
    flags |= dns_header_masks::TC * (header.tc as u16);
    flags |= dns_header_masks::RD * (header.rd as u16);
    flags |= dns_header_masks::RA * (header.ra as u16);
    flags |= dns_header_masks::AD * (header.ad as u16);
    flags |= dns_header_masks::CD * (header.cd as u16);
    flags |= u16::from(header.rcode);
    [bytes[2], bytes[3]] = flags.to_be_bytes();
    // Serialize RR counts
    [bytes[4], bytes[5]] = header.qdcount.to_be_bytes();
    [bytes[6], bytes[7]] = header.ancount.to_be_bytes();
    [bytes[8], bytes[9]] = header.nscount.to_be_bytes();
    [bytes[10], bytes[11]] = header.arcount.to_be_bytes();
}

/// Converts a logical representation of a DNS message header into its wire 
/// format with branches.
/// If the provided size of the array is too slow, this will cause a panic
pub fn convert_to_wire_format_branched_1(header: &DnsHeader, bytes: &mut [u8]) {
    // Serialize ID
    [bytes[0], bytes[1]] = header.id.to_be_bytes();
    // Serialize Flags
    let mut flags: u16 = 0;
    if header.qr {
        flags |= dns_header_masks::QR;
    }
    flags |= u16::from(header.opcode) << 11;
    if header.aa {
        flags |= dns_header_masks::AA;
    }
    if header.tc {
        flags |= dns_header_masks::TC;
    }
    if header.rd {
        flags |= dns_header_masks::RD;
    }
    if header.ra {
        flags |= dns_header_masks::RA;
    }
    if header.ad {
        flags |= dns_header_masks::AD;
    }
    if header.cd {
        flags |= dns_header_masks::CD;
    }
    flags |= u16::from(header.rcode);
    [bytes[2], bytes[3]] = flags.to_be_bytes();
    // Serialize RR counts
    [bytes[4], bytes[5]] = header.qdcount.to_be_bytes();
    [bytes[6], bytes[7]] = header.ancount.to_be_bytes();
    [bytes[8], bytes[9]] = header.nscount.to_be_bytes();
    [bytes[10], bytes[11]] = header.arcount.to_be_bytes();
}

/// Converts a logical representation of a DNS message header into its wire 
/// format with branches.
pub fn convert_to_wire_format_branched_2(header: &DnsHeader, bytes: &mut [u8]) {
    // Serialize ID
    [bytes[0], bytes[1]] = header.id.to_be_bytes();
    // Serialize Flags
    let mut flags: u16 = 0;
    flags |= u16::from(header.opcode) << 11;

    flags |= if header.qr {
        dns_header_masks::QR
    } else {
        0u16
    };
    flags |= if header.aa {
        dns_header_masks::AA
    } else {
        0u16
    };
    flags |= if header.tc {
        dns_header_masks::TC
    } else {
        0u16
    };
    flags |= if header.rd {
        dns_header_masks::RD
    } else {
        0u16
    };
    flags |= if header.ra {
        dns_header_masks::RA
    } else {
        0u16
    };
    flags |= if header.ad {
        dns_header_masks::AD
    } else {
        0u16
    };
    flags |= if header.cd {
        dns_header_masks::CD
    } else {
        0u16
    };
    flags |= u16::from(header.rcode);
    [bytes[2], bytes[3]] = flags.to_be_bytes();
    // Serialize RR counts
    [bytes[4], bytes[5]] = header.qdcount.to_be_bytes();
    [bytes[6], bytes[7]] = header.ancount.to_be_bytes();
    [bytes[8], bytes[9]] = header.nscount.to_be_bytes();
    [bytes[10], bytes[11]] = header.arcount.to_be_bytes();
}

#[cfg(test)]
mod tests {
    use super::*;
    use test::Bencher;

    #[test]
    fn conversion_convert() {
        let header = DnsHeader {
            id: 123,
            qr: false,
            opcode: 0,
            aa: false,
            tc: false,
            rd: true,
            ra: false,
            ad: true,
            cd: false,
            rcode: 0,
            qdcount: 1,
            ancount: 0,
            nscount: 0,
            arcount: 0,
        };
        let mut branchless_bytes = vec![0; 12];
        let mut branched_bytes = vec![0; 12];
        let mut branched_bytes_2 = vec![0; 12];

        convert_to_wire_format_branchless(&header, &mut branchless_bytes);
        convert_to_wire_format_branched_1(&header, &mut branched_bytes);
        convert_to_wire_format_branched_2(&header, &mut branched_bytes_2);

        assert_eq!(branchless_bytes, branched_bytes);
        assert_eq!(branched_bytes, branched_bytes_2);
    }

    #[bench]
    fn bench_wire_format_query_header_branchless(b: &mut Bencher) {
        let header = DnsHeader {
            id: 123,
            qr: false,
            opcode: 0,
            aa: false,
            tc: false,
            rd: true,
            ra: false,
            ad: true,
            cd: false,
            rcode: 0,
            qdcount: 1,
            ancount: 0,
            nscount: 0,
            arcount: 0,
        };
        let mut buffer = vec![0; 12];
        std::hint::black_box(&buffer);
        b.iter(|| {
            for _x in 1..100000 {
                convert_to_wire_format_branchless(&header, &mut buffer);
            }
        });
    }

    #[bench]
    fn bench_wire_format_query_header_branched_1(b: &mut Bencher) {
        let header = DnsHeader {
            id: 123,
            qr: false,
            opcode: 0,
            aa: false,
            tc: false,
            rd: true,
            ra: false,
            ad: true,
            cd: false,
            rcode: 0,
            qdcount: 1,
            ancount: 0,
            nscount: 0,
            arcount: 0,
        };
        let mut buffer = vec![0; 12];
        std::hint::black_box(&buffer);
        b.iter(|| {
            for _x in 1..100000 {
                convert_to_wire_format_branched_1(&header, &mut buffer);
            }
        });
    }

    #[bench]
    fn bench_wire_format_query_header_branched_2(b: &mut Bencher) {
        let header = DnsHeader {
            id: 123,
            qr: false,
            opcode: 0,
            aa: false,
            tc: false,
            rd: true,
            ra: false,
            ad: true,
            cd: false,
            rcode: 0,
            qdcount: 1,
            ancount: 0,
            nscount: 0,
            arcount: 0,
        };
        let mut buffer = vec![0; 12];
        std::hint::black_box(&buffer);
        b.iter(|| {
            for _x in 1..100000 {
                convert_to_wire_format_branched_2(&header, &mut buffer);
            }
        });
    }
}
