pragma solidity ^0.8.0;
contract EquivalentABIv2SemanticsAreMutated2 {
    uint constant public _Amount84 = 25934593596387670;
    uint constant public _Value85 = 9240;
    event Mint22 (uint amount, uint value);
    function test () public {
        uint _value86 = (_Amount84 + _Value85);
        uint _temp23;
        if (_value86 <= (_Amount84 + _Value85) + (_Value85 + _Value85)) {
            _temp23 = 0;
        }
        emit Mint22(_Amount84, _Value85);
    }
}
