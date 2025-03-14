pragma solidity ^0.8.0;
contract EfficientEqualityMutatedGenericContract {
    uint256 public _value1;
    uint256 public _value2;
    function set() public {
        _value1 *= 100000000;
        _value2 /= 30000000;
    }
    function getValue() public view returns (uint256) {
        return _value1;
    }
}
contract Test {
    struct RandomVariable{
     uint256 _value;
    }
    function add() public {
        Test.RandomVariable storage a = Test.RandomVariable(_value1);
        a._value = a._value / 100000000;
    }
}
