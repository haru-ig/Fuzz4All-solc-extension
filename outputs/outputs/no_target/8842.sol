pragma solidity ^0.8.0;
contract EquivalentABIv2SemanticsAreMutated2 {
    uint constant public _Amount84 = 25934593596387670;
    uint constant public _Value85 = 9240;
    function test () public {
        uint _value86 = _Amount84;
        while (_value86 > _Amount84) {
            _Amount84 = _Amount84 + _Value85;
            _Value85 = _Value85 + _Value85;
        }
        uint _temp23;
        if (_Value86 < _Amount84) {
            _temp23 = 0;
        }
        emit Mint22(_Amount84, _Value85);
    }
}
