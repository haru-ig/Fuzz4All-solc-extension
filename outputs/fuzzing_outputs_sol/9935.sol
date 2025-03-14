pragma solidity ^0.8.0;
contract FallbackSemantics {
    fallback fallback_(address payable _addr) public payable {
        _addr.transfer(20);
    }
}


contract Caller {
    Fallback semantics;
    function mutated(address payable _addr) public payable {
        semantics.fallback_(_addr);
    }

    fallback public payable {
        semantics.fallback_(msg.sender);
    }
}
