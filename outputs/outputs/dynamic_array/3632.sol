pragma solidity ^0.8.0;
contract D {
    uint256 public c;
    mapping(uint256 => uint256) public d;
    function e() public {
        a = d[c];
        delete d[c];
        d[c] = 2;
    }
}
