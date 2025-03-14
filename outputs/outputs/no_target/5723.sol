pragma solidity ^0.8.0;
contract Mutagen {
    bool f;
    address mut receiver;
    constructor(address _recvAddr) {
        receiver = _recvAddr;
        f = true;
    }

    receive() external payable {
        require(f);
    }
}
