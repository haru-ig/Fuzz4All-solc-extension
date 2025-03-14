pragma solidity ^0.8.0;
contract Mutable {
    constructor(uint previousValue) public {
        require(_previousValue == previousValue + previousValue);
        _previousValue = previousValue;
    }
    uint public set_previousValueAndAddPreviousValueValue;
    uint public immutable _previousValue;
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    function set_previousValueAndAddPreviousValueValue() public {
        uint value = _previousValue + _previousValue;
        if (value == set_previousValueAndAddPreviousValueValue) {
        }
    }
}
contract Mutated {
    constructor(uint previousValue) public {
        require(_previousValue == previousValue + previousValue);
        _previousValue = previousValue + previousValue + previousValue + previousValue + previousValue;
    }
    uint public set_previousValueAndAddPreviousValueValue;
    uint public immutable _previousValue;
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    function set_previousValueAndAddPreviousValueValue() public {
        uint value = _previousValue + set_previousValueAndAddPreviousValueValue;
        if (value == _previousValue + _previousValue) {
        }
    }
}
contract MutatedImmutable {
    constructor(uint previousValue) public {
        require(_previousValue == previousValue + previousValue);
        _previousValue = previousValue + previousValue + previousValue + previousValue + previousValue;
    }
    uint public set_previousValueAndAddPreviousValueValue;
    uint public immutable _previousValue;
    function _
