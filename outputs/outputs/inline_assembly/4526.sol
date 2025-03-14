pragma solidity ^0.8.0;
contract Emulator21 {
    uint256 lastNum = 0;
    constructor() {}

    function test() public pure returns(uint) { return lastNum; }
}
