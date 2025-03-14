pragma solidity ^0.8.0;
contract O {
    function f() public returns (uint) {
        return 1/ ~(1+3+3/2);
    }
}
