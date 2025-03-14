pragma solidity ^0.8.0;
contract SimpleExample2 {
    uint256 public counter;
    constructor () public {
        counter = 0;
    }

    function increment() public {
        uint256 value = 0;
        value = value + 1;
    }

    function increment2() public {
        uint256 value = 0;
        value = value + 1;
    }
}
