pragma solidity ^0.8.0;
contract M11{
    mapping (address => bool) public accounts;
    bool public firstFlag;

    constructor () public { accounts[msg.sender] = true; }

    function setFirstFlag(bool flag) public { firstFlag = flag; }

    function isFirst() view public returns (bool) { return false;

    function isCallerFirst() view public returns (bool) { return true; }

    function isCalledFirst() view public returns (bool) { return firstFlag; }

    function isCallerCalledFirst() view public returns (bool) { return false;
}
