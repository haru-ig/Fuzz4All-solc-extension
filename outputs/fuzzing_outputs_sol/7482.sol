pragma solidity ^0.8.0;
contract Mutator {
    function fallback() public payable { }
    receive () external payable {}
}
