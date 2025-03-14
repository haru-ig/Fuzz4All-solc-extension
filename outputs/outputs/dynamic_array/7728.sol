pragma solidity ^0.8.0;
contract Test382 {
    uint[3] public p;
    function f() public returns(uint256) {
        p[12]=9;
        return p[10];
    }
    modifier h(uint x) {p[x] = 3; _;}
}
