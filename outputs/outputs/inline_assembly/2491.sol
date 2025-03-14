pragma solidity ^0.8.0;
interface Mock2 {
    function increaseAmount(uint _increase) external;
}
contract Comp2 {
    uint _a;
    Mock2 mock;
    constructor(uint _a) {
        _a=_a + 1;
        mock=Mock2(0x123);
    }
    function setIncrease(uint _increase) public {
        mock.increaseAmount(_increase);
    }
}
