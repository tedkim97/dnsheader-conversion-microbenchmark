use header_conversion;
use rand::Rng;

/// Generates a vector of random structs where the bits
/// (QR, AA, TC, RD, RA, AD, CD) are randomized.
pub fn generate_random_headers(num: usize) -> Vec<header_conversion::DnsHeader> {
    let mut vec = Vec::with_capacity(num);
    for _i in 0..num {
        vec.push(header_conversion::DnsHeader {
            id: 123,
            qr: rand::random(),
            opcode: 0,
            aa: rand::random(),
            tc: rand::random(),
            rd: rand::random(),
            ra: rand::random(),
            ad: rand::random(),
            cd: rand::random(),
            rcode: 0,
            qdcount: 0,
            ancount: 0,
            nscount: 0,
            arcount: 0,
        });
    }

    return vec;
}

/// Generates a vector of random structs where the bits
/// (QR, AA, TC, RD, RA, AD, CD) are randomized by a threshold value. 
///
/// The threshold should be between [1, 1000]
pub fn generate_random_headers_with_threshold(num: usize, threshold: i32) -> Vec<header_conversion::DnsHeader> {
    let mut rng = rand::thread_rng();
    let mut vec = Vec::with_capacity(num);
    for _i in 0..num {
        vec.push(header_conversion::DnsHeader {
            id: 123,
            qr: rng.gen_range(0..1000) > threshold,
            opcode: 0,
            aa: rng.gen_range(0..1000) > threshold,
            tc: rng.gen_range(0..1000) > threshold,
            rd: rng.gen_range(0..1000) > threshold,
            ra: rng.gen_range(0..1000) > threshold,
            ad: rng.gen_range(0..1000) > threshold,
            cd: rng.gen_range(0..1000) > threshold,
            rcode: 0,
            qdcount: 0,
            ancount: 0,
            nscount: 0,
            arcount: 0,
        });
    }

    return vec;
}

#[cfg(test)]
mod tests {
    use super::*;
    use test::Bencher;

    #[bench]
    fn bench_wire_random_header_branchless(b: &mut Bencher) {
        let trials: usize = 10000;
        let headers = generate_random_headers(trials);
        let mut buffer = vec![0; 12];
        std::hint::black_box(&buffer);
        b.iter(|| {
            for i in 0..trials {
                let header = headers.get(i).unwrap();
                header_conversion::convert_to_wire_format_branchless(header, &mut buffer);
            }
        });
    }

    #[bench]
    fn bench_wire_random_header_branched_1(b: &mut Bencher) {
        let trials: usize = 10000;
        let headers = generate_random_headers(trials);
        let mut buffer = vec![0; 12];
        std::hint::black_box(&buffer);
        b.iter(|| {
            for i in 0..trials {
                let header = headers.get(i).unwrap();
                header_conversion::convert_to_wire_format_branched_1(header, &mut buffer);
            }
        });
    }

    #[bench]
    fn bench_wire_random_header_branched_2(b: &mut Bencher) {
        let trials: usize = 10000;
        let headers = generate_random_headers(trials);
        let mut buffer = vec![0; 12];
        std::hint::black_box(&buffer);
        b.iter(|| {
            for i in 0..trials {
                let header = headers.get(i).unwrap();
                header_conversion::convert_to_wire_format_branched_2(header, &mut buffer);
            }
        });
    }
}
