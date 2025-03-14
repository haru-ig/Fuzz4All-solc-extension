pragma solidity ^0.8.0;
contract Emulator22 {
    constructor() public {}
    uint public a;
    function test() public pure returns(uint) {
        a = 5;
        a = test();
        a = a + a;
        return a;
    }
}
