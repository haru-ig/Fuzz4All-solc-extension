pragma solidity ^0.8.0;
contract RevertSemantically {
    function revert() public pure { revert("This will never be executed"); }
}
