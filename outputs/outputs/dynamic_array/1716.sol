pragma solidity ^0.8.0;
contract MutatedDynamicArrays15 {
    uint256[] public elements;
    uint256 constant numElements = 6;
    constructor() public {
        elements = [120, 100, 90, 100, 100, 100];
        elements[3] = 150;
        elements[2] = 150;
        elements[1] = 150;
        elements[0] = 150;
        elements[4] = 200;
        elements[5] = 300;
    }
    modifier restrictedAccess() {
        require(msg.sender == 0x1234567890123456789012345678901234567890, "Restricted access for accounts < 5");
        _;
    }
    function write() public restrictedAccess {
        elements[3] = 200;
        elements[2] = 200;
        elements[1] = 200;
        elements[0] = 200;
        elements[4] = 200;
        elements[5] = 200;
    }
}
