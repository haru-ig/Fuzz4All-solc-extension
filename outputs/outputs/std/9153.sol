pragma solidity ^0.8.0;
contract SemanticEquivalenceContract {
    uint256 public _value1;
    uint256 public _value2;
    function increment() public {
        uint256 m = _value2;
        _value1 += 100000;
        _value2 = m - 180000;
    }
    function getValue() public view returns (uint256) {
        return _value2;
    }
}
