pragma solidity ^0.8.0;
contract FallbackMutated {
    uint a=1;
    function mutated_(address payable _addr) public payable {
        _addr.transfer(20);
    }
}
