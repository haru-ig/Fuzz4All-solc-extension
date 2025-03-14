pragma solidity ^0.8.0;
contract Caller {
    function fallback(uint) public returns (uint) { return 3;}
}
