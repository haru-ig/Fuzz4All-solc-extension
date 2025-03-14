pragma solidity ^0.8.0;
contract Equivalent3 {
    uint public a;
    uint b;
    mapping(address => uint) public mappingContract;
    constructor(uint, uint) public {
        a = 2;
        b = 29;
        mappingContract["0x00000000000000000000000000000000000000"] = 2025;
    }
    function set() public {
        if (!0 == a) {
            b = 0;
        }
        b = a;
        a = b * b;
        b = a;
        mappingContract[a] = 2025;
    }
    }
