extern crate header_util;

fn main() {
    let conversion_mode = std::env::args().nth(1);
    let convert = match conversion_mode.as_deref() {
        Some("branchless") => header_util::header_conversion::convert_to_wire_format_branchless,
        Some("branched1") => header_util::header_conversion::convert_to_wire_format_branched_1,
        Some("branched2") => header_util::header_conversion::convert_to_wire_format_branched_2,
        Some("branchless_assert_opt") => header_util::header_conversion::convert_to_wire_format_branchless_assert,
        Some("branched1_assert_opt") => header_util::header_conversion::convert_to_wire_format_branched_1_assert,
        Some("branched2_assert_opt") => header_util::header_conversion::convert_to_wire_format_branched_2_assert,
        _ => panic!("valid conversion function required"),
    };
    let num_trials: usize = std::env::args()
        .nth(2)
        .expect("no number of trials given")
        .parse()
        .unwrap();

    let headers = header_util::random_header::generate_random_headers(num_trials);
    let mut buffer = vec![0; 12];
    std::hint::black_box(&buffer);
    for i in 0..num_trials {
        let header = headers.get(i).unwrap();
        convert(header, &mut buffer);
    }
}
