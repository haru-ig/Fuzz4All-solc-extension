pragma solidity ^0.8.0;
contract FallbackTest {
    address public owner;
    uint256 public constant n = 0;
    modifier when() { require(msg.value!= 5, '0'); _ ; }
    constructor() {
        owner = msg.sender;
    }
    function fallback() public payable receive () { require(msg.value == 0, '2'); }
}
