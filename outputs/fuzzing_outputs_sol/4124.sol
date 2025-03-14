pragma solidity ^0.8.0;
contract Caller {
    function fallback(string memory _data) public payable returns (uint) { revert(); }
}
