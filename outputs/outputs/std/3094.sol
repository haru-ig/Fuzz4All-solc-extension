pragma solidity ^0.8.0;
contract Mutation {
    address payable addr;
    constructor() {
        addr = payable(msg.sender);
    }
    function doSomething() external {
      addr.sendValue(3 ether);
    }
}
