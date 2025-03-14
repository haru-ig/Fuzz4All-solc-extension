pragma solidity ^0.8.0;
contract Mutator3 {
    contract Mutator2;
    receive() payable external {
        Mutator2 mem_Mutator2 = Mutator2(address(Mutator2));
        mem_Mutator2.payWithFallback(msg.sender);
    }
}
