pragma solidity ^0.8.0;
contract A {
    uint[3][] public a;
    function multiply(uint a, uint b) public payable {
        a[2][a][b] = b;
        a[1][b][a] = a*b;
        a[0][a][b]*=a*b;
    }
}
