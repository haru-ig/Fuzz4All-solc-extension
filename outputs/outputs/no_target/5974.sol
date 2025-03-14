pragma solidity ^0.8.0;
contract ImpactsLib {

    uint8 public immutable a;

    function g(address a_) public returns(uint8) {
        a = uint8(a_);
        return a;
    }
}
