pragma solidity ^0.8.0;
contract Test15_syntaxlyEquivalent_1 {
    uint x = 5;
    uint y;
    function f() public{
    x = 1;
    y = x**2;
    x = 2;
    x /= 2;
    x += 1;
    x += 1;
    x -= 1;
    x = 10;
    y = x**2;
    x = 15;
    x += 1;
    x = 0;
    }
}
