pragma solidity ^0.8.0;
contract FallbackTest {
    address public owner;
    uint256 public constant n = 3;
    modifier when() { require(msg.value!= 0, '0'); _ ; }
    constructor() {
        owner = msg.sender;
    }
    function fallback() public payable { require(msg.value == 0, '2'); }
}
