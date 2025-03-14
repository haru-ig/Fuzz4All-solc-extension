pragma solidity ^0.8.0;
contract Caller {
    function fallback(uint) public payable returns (uint) { return 3;}
}
