pragma solidity ^0.8.0;
contract G8d {
    uint public x = 2;

    function f() public {
        G8d xRef = G8d(address(this)).f();
    }
}
