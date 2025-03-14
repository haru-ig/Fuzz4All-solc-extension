pragma solidity ^0.8.0;
contract SimpleExamplex_private_constructor {
    uint256 private counter;
    function foo() public {
        counter = counter + 1;
    }
}
