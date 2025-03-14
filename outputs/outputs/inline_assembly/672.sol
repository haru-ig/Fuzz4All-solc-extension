pragma solidity ^0.8.0;
contract Mutator6 {
   uint256 a;
    constructor() public {}
    modifier doUpTo(uint256 index) {
        require(a <= 10, "done");
        _;
    }
    function testMethod() public doUpTo(10) {
        a = 99;
    }
}
