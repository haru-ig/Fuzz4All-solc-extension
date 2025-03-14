pragma solidity ^0.8.0;
contract O {
    mapping(string=>string) public f;
    function f() public returns (string memory) {
        string memory r = "2";
        address a = 5;
        f[a] = r;
        r = "x";
        return r;
    }
}
