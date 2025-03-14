pragma solidity ^0.8.0;
contract Test {
    event TestEvent(uint);
    constructor () public { }
    function setID(uint) public { addEvent(1, true); }
    function setID(uint) public { addEvent(-1, false); }
    function setID(uint) public { addEvent(uint128(uint(20)), false); }
    function addEvent(uint _n, bool _isNegative) public { TestEvent(_n * getID() + (_isNegative? -1 : 0)); }
    function getID() public pure returns (uint) { return 1; }
}
