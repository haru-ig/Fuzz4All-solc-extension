pragma solidity ^0.8.0;
contract EquivalentABIv2SemanticsAreMutated4 {
    uint constant public _Amount84 = 25934593596387670;
    uint constant public _Value85 = 9240;
    event Mint22 (uint amount, uint value);
    function test (uint _value86) public returns (uint) {
        uint _result;
        _result = _value86 + _value86;
        if (_result < _Value85) {
            emit Mint22(_Amount84, _Value85);
            return _Value85;
        } else {
            return _result;
        }
    }
}
