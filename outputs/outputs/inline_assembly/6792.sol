pragma solidity ^0.8.0;
contract MixedContactsExample522 {
    uint8 constant private test = 2;
    uint8 private x;
    mapping(uint8 => uint8) private table;
    constructor() public {
        uint8 num;
        num = 1;
        num = 2;
        num = 3;
    }
    function moreOperations9() external {
            uint8 num;
            num = 1;
            num = 2;
            num = 4;
        }
    function someFunction() external view returns (uint8) {
            uint8 test;
            return table[test];
        }
}

pragma solidity ^0.8.0;

contract MixedContactsExample522 {
    uint8 constant private test = 2;
    uint8 private x;
    uint8[10] private table;
    constructor() public {
        uint8 num;
        num = 1;
        num = 2;
        num = 3;
    }
    function moreOperations9() external {
        uint8 num;
        num = 1;
        num = 2;
        num = 4;
    }
    function someFunction() external view returns (uint8) {
        uint8 num;
        num = 1;
        num = 2;
        num = 4;
        return table[num];
    }
}
