pragma solidity ^0.8.0;
contract Convert {
    function toHexString(uint256 _a)
        public constant
        pure
        returns (string memory)
    {
        if(_a == uint(0)) {
            return "0x00";
        }
        uint256 _b = _a.toHexString();
        bytes memory _c = new bytes(8 - _b.length);
        for(uint i = 0; i < _b.length; i++) {
            _c[i] = bytes1(uint8(_b.substr(uint256(i), 1)));
        }
        return string(_c);
    }
}
