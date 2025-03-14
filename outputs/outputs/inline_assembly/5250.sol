pragma solidity ^0.8.0;
contract C {
    uint256 counter;
    uint256 constant min = 1;
    uint256 constant max = 10;
    constructor() public {
        counter = msg.value;
    }
    function getCounterValue() external view returns (uint256) {
        return counter;
    }
    function decreaseCounter() public returns (uint256) {
        counter--;
        return counter;
    }
}
contract Test {
    uint256 public iv = 5;
    constructor() public {}
    function() public {
        uint256 s = 3;
        asm {
            mov     $s, 3
            mov     $s, 5
        }
    }
}
