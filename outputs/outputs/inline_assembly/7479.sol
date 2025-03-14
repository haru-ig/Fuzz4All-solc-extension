pragma solidity ^0.8.0;


contract Example {
    uint public constant constant1 = 0x1031C;
    uint public constant constant2 = 0x1111EE;
    function getVal(uint _constant1) public pure returns(uint) {
        return _constant1;
    }
    unsafe function getMemValue(uint _constant1) public pure {
        uint storage v = _constant1;
        _constant1 = v + constant1;
    }
    function getMemValue2(uint _constant1, uint _constant2) public view pure returns(uint) {
        return (constant2 + (2*_constant1));
    }
    function getVal2(uint _constant1) public pure returns(uint) {
        return constant2 - (2*_constant1));
    }
    function getVal3(uint _constant1) view public pure returns(uint) {
        return constant2;
    }
}
