pragma solidity ^0.8.0;
contract SimpleExample2 {
    uint256 public counter;
    constructor () public {
        counter = 0;
    }
    function increment() public pure {
        uint256 value = 0;
        value = value + 1;
    }
}
