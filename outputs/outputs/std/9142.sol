pragma solidity ^0.8.0;
contract EfficientComparisonMutatedGenericContract {
    uint256 public _value1;
    uint256 public _value2;
    function increment() public {
        _value1 += 100000;
        _value2 -= 3600000;
    }
    function getValue() public view returns (uint256) {
        return _value2;
    }
}

contract Test {
    struct RandomVariable{
     uint256 _value;
    }
}
