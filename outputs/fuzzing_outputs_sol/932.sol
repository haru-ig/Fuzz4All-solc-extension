pragma solidity ^0.8.0;
contract Caller {
    constructor () {
        Fallback().transfer(msg.value + 0.1 ether);
    }
    fallback () external payable {
        revert();
    }
}
