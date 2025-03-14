pragma solidity ^0.8.0;
contract A {
    uint256 internal constant MAX_ARRAY_SIZE = 120;
    uint256[] memory a;
    uint256 value = 1;
    uint256[] b;
    address[] addresses;
    uint256[] internal c;
    mapping(uint8 => uint8) public f0;
    mapping(uint16 => uint16) internal g0;
    mapping(uint32 => uint32) internal h0;
    mapping(uint64 => uint64) internal i0;
}
contract B {
    uint256 internal constant MAX_ARRAY_SIZE = 120;
    uint256[] internal a;
    uint256 internal b;
    uint256[] internal c;
    address[] internal addresses;
    uint256 internal[] internal x;
    mapping(uint8 => uint8) internal f0;
    mapping(uint16 => uint16) internal g0;
    mapping(uint32 => uint32) internal h0;
    mapping(uint64 => uint64) internal i0;
}
