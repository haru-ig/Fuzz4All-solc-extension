pragma solidity ^0.8.0;
contract MutatedExample0{
    bool public isMutated;
    uint16 public i;
    address payable addr;

    modifier payableOnly(address _addr){require(msg.sender == _addr); _; }

    function MutatedExample0(uint16 i_) public payable {
        isMutated = true;
        i = i_;
        addr = payable(msg.sender);
    }

    function MutatedExample1(uint16 x) public payable returns (uint16) {
        i = 0;
        return x * 2;
    }

    function MutatedExample2() public payable {
        isMutated = false;
    }
    /*
    1. We have a simple storage function that gets modified
    2. We call a function that updates the storage
    3. We call a function that can modify the storage (if the `only` modifier is implemented)
    4. We call a call that calls another function that modifies the storage (if the `payableOnly` modifier is implemented)
    Thus, in the end, isMutated becomes more complicated than it needs to be;
    a) `MutatedExample0(uint16)` will set `isMutated = true`
    b) `MutatedExample1(uint16)` will call `MutatedExample0(uint16)`
    c) `MutatedExample2()` will have no effect
    d) `MutatedExample3()` will call `MutatedExample3(uint16)`
    e)
