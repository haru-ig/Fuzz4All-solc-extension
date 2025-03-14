pragma solidity ^0.8.0;
contract Mutant2 {
    constructor() public { }
    function fallback() payable external {
    }
    receive() external payable {
    }


    function testFallback() public payable {
        assert(msg.value == fallback.estimateGas(1));
    }
}
