pragma solidity ^0.8.0;
contract C {
    function myFunction() pure internal returns (uint8 e) {
        uint8 _v;
        unchecked
        {
            _v = 4 + 97;
            e = _v;
        }
    }
}
contract A {
    function myFunction() public pure internal returns (uint8 e) {
        uint8 _v;
        unchecked
        {
            uint8 _l = 4;
            uint160 _v = (((uint256)((uint256)(_l))) << 24);
            _v += _l;
            _v *= _l;
            _v *= _l;
            _v *= _l;
            _v *= _l;
            _v *= _l;
            _v *= _l;
            _v *= _l;
            _v *= _l;
            _v *= _l;
            _v *= _l;
            _v *= _l;
            _v *= _l;
            _v *= _l;
            _v /= _l;
            _v /= _l;
            _v /= _l;
            _v /= _l;
            _v /= _l;
            _v /= _l;
            _v /= _l;
            _v /= _l;
            _v /= _l;
            _v /= _l;
            _v /= _l;
            _v /= _l;
            _v /= _l;
            _v /= _l;
            _v /= _l;
            _v /= _l;
            _v /= _l;
            _v /= _l;
            _v /= _l;
            _v /= _l;
            _v /= _l;
            _v /= _l;
            _v /= _l;
            _v /= _l;
            _v = _l;
            _v /= _l;
            _v = (((uint256)((uint)(_v))) << 24);
            _v += _v;
            _v *= _v;
            _v *= _v;
            _v *= _v;
            _v *= _v;
            _v *= _v;
            _v *= _v;
            _v /= _v;
            _v = _v;
            _v /= _v;
            _v *= _v;
            _v *= _v;
            _v /= _v;
            _v /= _v;
            _v *= _v;
            _v *= _v;
            _v *= _v;
            _v /= _v;
            _v = _v;
            _v /= _v;
            _v *= _v;
            e = _v;
        }
    }
}
