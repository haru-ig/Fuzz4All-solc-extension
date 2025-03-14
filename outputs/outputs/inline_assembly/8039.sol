pragma solidity ^0.8.0;
contract MultipleReturn0x6 {
    uint public x;
    uint public y;
    uint public z;
    uint public num;
    function multipleReturn(uint _num) public returns (uint) {
        if (_num == 2) {
            uint x = 1;
            x = num;
            num += 1;
        } else {
            uint z = 2;
            z = num;
            num += 2;
        }
        return 1;
    }
    function multipleReturn0x01(uint _num) public returns (uint) {
        if (_num == 2) {
            uint x = 1;
            x = num;
            num += 1;
        } else {
            uint z = 2;
            z = num;
            num += 2;
        }
        return num;
    }
    function multipleReturn0x6() public returns (uint) {
        __emit(4);
        __emit0();
        __emit1();
        return 2;
    }
    function __emit0() internal view {
        assembly {
            {
                let result := call(sub(gas, 700),"0x4cc870f8", 0, 3, mload(0), 0,
