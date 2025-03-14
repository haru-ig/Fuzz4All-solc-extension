pragma solidity ^0.8.0;
contract Caller is MutatedCaller {
    constructor() {
        _x = 2;
    }
    receive() payable external {
    }
    fallback() external {
        assert(0 == msg.data.length);
    }
}
