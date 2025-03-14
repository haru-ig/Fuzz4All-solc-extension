pragma solidity ^0.8.0;
contract Mutater1 {
    address internal _receiver;
    address internal _delegate;
    function mutatedFunction(uint32 value) public {
        require(value!= 0, "Zero value");
        _delegate.call{value: value}("");
    }
    fallback () external {
    }
}
