pragma solidity ^0.8.0;
contract C {
    uint public e1;
    uint public e2;
    uint public e3;
    function f(uint[] memory x, uint[] memory y, uint[] memory z) public {
        e1 = x.length;
        e2 = y.length;
        e3 = z.length;
    }
}
