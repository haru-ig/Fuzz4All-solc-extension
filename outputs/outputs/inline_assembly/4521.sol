pragma solidity ^0.8.0;
contract Emulator20 {
    function write1(uint _input) public pure {
        write(_input);
    }
    function write2(uint _left, uint _right) public pure {
        write(_left + _right);
    }
    function write3(uint _left, uint _right, uint _value) public pure {
        write(_left + _right + _value);
    }
    function write4(uint _left, uint _right, uint _value, uint _target) public pure {
        write(_left + _right + _value);
        return _target;
    }
    function write5(uint _left, uint _right, uint _value, uint _target, uint _amount) public pure {
        write(_left + _right + _value);
        write(_target - _left + _amount);
    }
    function write6(uint _left, uint _right, uint _value, uint _target, uint _amount, uint _target2) public pure {
        write(_left + _right + _value);
        write(_target - _left + _amount);
        write(_target2 - _target + _amount);
    }
    function write7(uint _left, uint _right, uint _value, uint _target, uint _amount, uint _target2, uint _amount2) public pure {
        write(_left + _right + _value);
        write(_target - _left + _amount);
        write(_target2 - _target + _amount);
        write(_target2 - _target + _amount2);
    }
    function write8(uint _left, uint _right, uint _value, uint _target, uint _amount, uint _target2, uint _amount2, uint _target3) public pure {
        write(_left + _right + _value);
        write(_target - _left + _amount);
        write(_target2 - _target + _amount);
        write(_target2 - _target + _amount2);
        write(_target3 - _target2 + _amount);
    }
    function write(uint _input) private pure {
        emit Event130(_input);
    }
    function Event130(uint _input) public { }
    function read() public pure returns (uint) { return 5; }
}

pragma solidity ^0.8;
contract Emulator21 {
    function return0() public pure returns(uint) { return 0; }
    function return1(uint _input) public pure returns(uint) { return _input; }
    function return3(uint _left, uint _right) public pure returns(uint) { return _left + _right; }
