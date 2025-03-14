pragma solidity ^0.8.0;
contract ChangeSemanticsUsingYul {
    address constant ZERO = address(0);
    address constant ONE = address(1);
    address constant TWO = address(2);
function change1 (address a) public {
    a ^= a;
    a ^= a;
    a ^= a;
    a ^= a;
    a ^= a;
    a ^= a;
    a ^= a;
    a ^= a;
}
function change9 (address a) public {
    a ^= a;
    a ^= a;
    a ^= a;
    a ^= a;
    a ^= a;
    a ^= a;
    a ^= a;
    a ^= a;
    a ^= a;
    a ^= a;
    a ^= a;
}
function change2 (address a) public {
    a ^= a;
    a ^= a;
    a ^= a;
    a ^= a;
}
}
