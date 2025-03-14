pragma solidity ^0.8.0;
contract SemanticExampleComparingContract {
    uint256 _value1;
    uint256 _value2;


    constructor(uint256 x) payable {
        _value1 = x;
    }


    function increment() public returns (uint256) {
        _value1++;
        _value2 -= _value1;
        _value2 += _value1;
        return _value2;
    }


    function getValue() public view returns (uint256) {
        return _value2;
    }
}

pragma solidity ^0.8.0;
contract SemanticExampleSemiring {
    uint256 internal constant INT256_CONST = 0;
    function getValue() returns (uint256);
}
