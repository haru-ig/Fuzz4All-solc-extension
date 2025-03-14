pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MutatedStorage5 {
    uint public num;
    constructor() public {
        num = 0;
    }
    function changeNumber(uint _number) public returns (uint) {
        num = _number + 1;
        return (100 as uint);
    }

    function addZeroTwo() public returns (uint) {
        num += 2;
        return 100;
    }
}
