pragma solidity ^0.8.0;
contract Incrementer {
    address immutable owner;
    uint internal count;
    modifier onlyOwner() {
        require(msg.sender == owner, 'Incorrectly triggered. Ownership is locked.');
        _;
    }
    function increment() onlyOwner public {
        count += 1;
    }
}
contract IncrementedMutatedSemanticallyEquivalentAssemblyExample8 {
    address immutable owner;
    Incrementer inc;
    uint internal count;
    modifier onlyOwner() {
        require(msg.sender == owner, 'Incorrectly triggered. Ownership is locked.');
        _;
    }
    function increment() onlyOwner public {
        inc.increment();
    }
}*/
