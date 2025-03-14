pragma solidity ^0.8.0;
contract Test72 {
    uint[] public a;
    function f() public {
        a = new uint[](3);
        a[3] = 34;
    }
}
