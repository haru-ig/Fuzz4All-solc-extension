pragma solidity ^0.8.0;
contract ChangeGenerationsUsingYul {
    function change (address v) public {
    a = 1;
    a = 2;
    a = a;

    a = 2;
    a = 3;
    a = a;

     a = a;
    a = a;
    a = a;

     a = a;
    a = a;
    a = a;

     a = a;
    a = a;
    a = a;
     a = a;
    b = 1;
    c = 1;
    a = a; }
}
