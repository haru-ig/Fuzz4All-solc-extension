pragma solidity ^0.8.0;
contract F1 {
    uint a;
    uint b;
    bytes memory bytes_return;
    bytes1 memory bytes_return1;
    uint8 memory uint8_return;
    uint64 memory uint64_return;

    function F1 (uint _a) public {
        a = _a;
    }

    function add (uint a, uint b) public view returns (uint){
        return (a ^ b);
    }
}

contract F2 {
    function add (uint a, uint b) public view returns (uint){
        return (a ^ b);
    }
}

contract F3 {
    bytes32 hash_test;
    bytes1 hash_test1;
    bytes32 empty_bytes;
    bytes1 empty_bytes1;
    bytes hash;
    bytes1 hash1;
    bytes32 empty_bytes32;
    bytes1 empty_bytes1_1;
    bytes32 empty_bytes32_1;

    constructor() public {
        uint i;
        bytes memory empty_array = bytes(0);
        bytes1 memory empty_array1 = bitsToBytes("0x80");
        bytes32 memory empty_array32 = "0xff";
        bytes1 memory empty_array1_1 = bitsToBytes1("0x80");
        bytes32 memory empty_array32_1 = "0xffffffffffffffffffffffffffffffffffffffff";

        for (i=0;i<255;i++) empty_bytes.push(i);
        for (i=0;i<255;i++) empty_bytes1.push(i);
        for (i=0;i<256;i++) empty_bytes32.push(i);
        for (i=0;i<256;i++) empty_bytes1_1.push(i);
        for (i=0;i<256;i++) empty_bytes32_1.push(i);

        hash ="0x6A3E3264A3C720A9034027B034082B3E565B3ECE32E40817FE2DCE36E51EBA5";
        hash1 ="0xda8680af6e85e3ea3308053af3cc6b61cf983a46";
    }

    modifier hash_test_test {
        if (hash_test == hash) {
            _;
        }
    }

    modifier hash_test_test1 {
        if (hash_
