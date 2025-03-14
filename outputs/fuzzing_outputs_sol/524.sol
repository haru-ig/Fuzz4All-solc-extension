pragma solidity ^0.8.0;
contract LegacyFallbackTest {
    address public owner;
    uint256 public constant n = 3;
    modifier when() { require(msg.value!= 0, '0'); _ ; }
    constructor() {
        owner = msg.sender;
    }
    function() public payable {
    }
    function fallback() public payable payable {}
}
