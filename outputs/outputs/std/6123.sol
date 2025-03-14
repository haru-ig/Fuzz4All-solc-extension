pragma solidity ^0.8.0;
library Memory {

    function getArrayAddress(uint32[] memory array_) view internal returns (uint32[] memory array_) {
        return array_;
    }
}
contract Array {

    address payable[] public payees;


    constructor() {
        payees.push(msg.sender);
    }


    static function sum(uint32 x, uint32 y) returns (uint32) {
        return x + y;
    }


    function getMin() view returns (uint32) {
        uint32 min = payees[0];
        for (uint256 i = 1; i < payees.length; i++) {
            uint32 value = payees[i];
            if (value <= min) {
                min = value;
            }
        }
        return min;
    }
}
