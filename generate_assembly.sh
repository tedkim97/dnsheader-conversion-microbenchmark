cargo asm --dev --lib header_util::header_conversion::convert_to_wire_format_branched_1 --native > generated_assembly/debug_branched1.asm
cargo asm --dev --lib header_util::header_conversion::convert_to_wire_format_branched_2 --native > generated_assembly/debug_branched2.asm
cargo asm --dev --lib header_util::header_conversion::convert_to_wire_format_branchless --native > generated_assembly/debug_branchless.asm
cargo asm --release --lib header_util::header_conversion::convert_to_wire_format_branched_1 --native > generated_assembly/release_branched1.asm
cargo asm --release --lib header_util::header_conversion::convert_to_wire_format_branched_2 --native > generated_assembly/release_branched2.asm
cargo asm --release --lib header_util::header_conversion::convert_to_wire_format_branchless --native > generated_assembly/release_branchless.asm
