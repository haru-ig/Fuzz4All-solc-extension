pragma solidity ^0.8.0;
bytes32 private constant _uint = 0x00000000000000000000000000000000000000000000000000000000000000000000;
contract not_a_mutated_sn6096 { uint public x; function  a_mutate(uint) public { x = 0x7FFFFFFFFFFFFFFFFFFFFFFFFF; } }
pragma solidity ^0.8.0;
bytes32 private constant _int = 0x80000000000000000000000000000000000000000000000000000000000000000000;
contract not_a_mutated_sn6096 { int public x; function  a_mutate(int arg) public { x = 0x7FFFFFFFFFFFFFFFFFFFFFFFFF; } }
pragma solidity ^0.8.0;
bytes32 private constant _bytes = 0xFFD27F527F647FD9FF13C1809014F03E9DB8ADB183DEDBF91EF52C75B6273AF5;
contract not_a_mutated_sn6096 { string public x; function  a_mutate(string) public { x = "0xFFFFFFFFFFFFFFFFFFFFFFFF"; } }
pragma solidity ^0.8.0;

pragma solidity ^0.8.0;
contract overflowing_sn6096 { function  overflowing() public { uint x; x += (uint(3000000000000000000000) * 3000000000000000000000); } }

pragma solidity ^0.8.0;
