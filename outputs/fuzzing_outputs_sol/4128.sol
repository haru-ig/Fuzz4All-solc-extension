pragma solidity ^0.8.0;
contract MutatedCaller {
    function fallback(string memory _data) public payable { revert(); }
}
