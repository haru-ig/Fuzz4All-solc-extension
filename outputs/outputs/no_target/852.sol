pragma solidity ^0.8.0;
contract SemanticCheckMutated1 {
    function isBoolEqual(bool _first, bool _second)
        public
        pure
        returns (bool)
    {
        return _first == _second;
    }
    function isStringEqual(string memory _first, string memory _second)
        public
        pure
        returns (bool)
    {
        if (_first < _second)
            _first;
        uint8 v;
        assembly {
            v := eq(
                mload(add(0x80, _first)),
                mload(add(0x80, _second))
            )
        }
        return v == 1;
    }
    function isEqualInt(int16 _first, int16 _second)
        public
        pure
        returns (bool)
    {
        uint8 v;
        assembly {
            v := eq(
                mload(add(0x80, _first)),
                mload(add(0x80, _second))
            )
        }
        return v == 1;
    }
}
