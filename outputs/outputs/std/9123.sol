pragma solidity ^0.8.0;
contract SemanticExampleContract {
    function increment() public {
        _value1++;
        _value2 *= 2;
        _value2 += 2 * _value1;
    }
    function value1() public pure returns (uint256) {
        return _value1;
    }
}
contract SemanticExampleContract {
    function increment() public {
        _value1++;
        _value2 *= 2;
        _value2 += 2 * _value1;
    }
    function value3() public pure returns (uint256) {
        return _value1;
    }
}
