pragma solidity ^0.8.0;
contract C8 {
    uint256 constant i = 10;
    uint256 constant j = 20;
    constructor(uint256 x) {}
    function mutate(uint256 s) public {
        (s[i], s[j]) = (s[j], j + s[i]);
    }
}
