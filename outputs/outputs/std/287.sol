pragma solidity ^0.8.0;
contract Mutator {
    function run() external {
        Mutator mutator = Mutator(0x877800506e0d0ca2434a0c30b63311b4e45f0d69);
        mutator.increment();
    }
    function increment() public returns(uint) {
        return 1;
    }
}
