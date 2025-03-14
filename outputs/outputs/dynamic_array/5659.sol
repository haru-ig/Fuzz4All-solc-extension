pragma solidity ^0.8.0;
contract Test73 {
    uint[] public a;
    function f() public returns (uint[]) {
        a = new uint[](3);
        a[3] = 34;
        return a;
    }
}
