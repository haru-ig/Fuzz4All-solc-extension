pragma solidity ^0.8.0;
contract CallMutatedExample {
    address public addr;
    constructor(address _addr) {
        addr = _addr;
    }
    receive() external payable {
        addr;
    }
}
