pragma solidity ^0.8.0;
contract Greeter {
    uint256 a;
    constructor (){ a = 1; }
    function say() external pure returns(uint256)  { return a; }
 }
