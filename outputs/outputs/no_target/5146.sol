pragma solidity ^0.8.0;
contract SimpleExample {
    uint256 public counter;
    function foo() public {
        counter = counter + 1;
    }
}
