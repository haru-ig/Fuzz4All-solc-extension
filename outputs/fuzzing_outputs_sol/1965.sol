pragma solidity ^0.8.0;
contract Mutater {
    uint32 count = 0;
    function fallback() public payable {
        count = (count > 1)? 0 : count;
    }
}

contract MutaterFallbackTest {
    uint32 count = 0;
    mutates() external payable {
        count = (count > 1)? 0 : count;
    }
    fallback() external payable { count = (count > 1)? 0 : count; }
    receive() external payable {
        count = (count > 1)? 0 : count;
    }
}
