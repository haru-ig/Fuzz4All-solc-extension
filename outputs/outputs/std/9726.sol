pragma solidity ^0.8.0;
contract MutateNeg1 {
    uint x;
    uint y;
    address[] addrs;
    constructor() {
        x = 0xDEADBEEF;
        y = 0xABCDABBE;
        addrs = new address[](2);
        addrs[0] = msg.sender;
        addrs[1] = msg.sender;
    }
    function mutateThisContract(address payable owner) payable public {
        x += 1;
        y += 2;
        for(uint i = 0; i < addrs.length; i++) {
            addrs[i] = payable(owner);
        }
    }
}
