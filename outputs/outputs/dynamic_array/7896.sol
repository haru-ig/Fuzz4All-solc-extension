pragma solidity ^0.8.0;


contract Test {
    function foo() public pure {
        unchecked {
        }
    }
    constructor() { foo(); }
    function g(uint256 x) public payable { x; }
}
