pragma solidity ^0.8.0;
contract ErrorThrowing {
    function f() public pure {
        revert("This line of code should not be executed.");
    }
}
