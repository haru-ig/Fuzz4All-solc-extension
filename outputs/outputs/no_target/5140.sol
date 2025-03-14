pragma solidity ^0.8.0;
contract SimpleExamplex_fixed_state_variables {
    uint256 public balance;
    function foo() public {
        balance = balance + 1;
    }
}
