pragma solidity ^0.8.0;
contract SemanticEquivalenceContract {
    uint256 constant _value1 = 10**250;
    uint256 constant _value2 = 250;
    function increment() public {
        _value2 += 1;
        require(true, "should be true");
    }
    function add(uint256 _value) public view returns(uint256) {
        return _value1 + _value;
    }

    function getValue() public view returns(uint256) {
        return _value2;
    }
}
contract Increment {
    uint256 public _var1;
    uint256 public _var2;
    function increment() public {
        _var2 += 1;
        printValue();
    }
    function value2() public view returns (uint256) {
        return _var2;
    }
    function printValue() public view returns (uint256) {
        return _var1;
    }
}
