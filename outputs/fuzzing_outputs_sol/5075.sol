pragma solidity ^0.8.0;
contract Callee {
    function call() public returns (uint) {
        return 42;
    }
}
