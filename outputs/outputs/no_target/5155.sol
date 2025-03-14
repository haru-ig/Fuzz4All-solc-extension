pragma solidity ^0.8.0;
contract SimpleExample3 {
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
    function increment3(uint8 value) public {
        uint256 value2 = 0;
        value2 = value2 + 1;
    }
}
