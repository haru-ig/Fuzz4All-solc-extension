pragma solidity ^0.8.0;
 contract FallbackMutator {
    address payable addr;
    constructor(address payable _addr) {
        addr = _addr;
    }
    receive () external payable {
        emit Received();
        emit FallbackReceivesEther();
    }

}
