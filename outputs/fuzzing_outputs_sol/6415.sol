pragma solidity ^0.8.0;
import './Caller.sol';
contract CallerMutator {
    function sendEther() public payable {
    }
    function mutate() public {
        Caller c = new Caller();
        c.sendEther();
        delete c.sendEther();
    }
}
