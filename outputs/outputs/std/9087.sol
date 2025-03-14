pragma solidity ^0.8.0;
contract ExampleContract {
    uint256 constant Value = 10;
    function increment() public {
        Value += 1;
    }
}
