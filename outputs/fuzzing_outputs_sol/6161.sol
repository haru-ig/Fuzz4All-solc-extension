pragma solidity ^0.8.0;
contract MyEther {
    constructor() public payable {
        this.transfer(5 ether);
    }
    receive() external payable {
    }
    function test() public {
    }
}
