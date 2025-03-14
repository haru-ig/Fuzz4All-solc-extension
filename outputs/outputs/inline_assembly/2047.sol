pragma solidity ^0.8.0;
contract SimpleY11 {
    uint public a;
    function f(uint n) public {
        (a = 0) = 0;
        a = a + 1;
    }
}
