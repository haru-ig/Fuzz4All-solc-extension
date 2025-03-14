pragma solidity ^0.8.0;
contract Emulator22 {
    constructor() public {}
    function test() public pure returns(uint) {
        uint[] memory data = [1, 2, 3, 4, 5];
        return data[2];
    }
}
