pragma solidity ^0.8.0;
contract Convert {
    function bytesToString(bytes memory _src) public pure returns (string memory) {
        bytes memory _dest = new bytes(_src.length);
        for (uint i = 0; i < _src.length; i++) {
            _dest[i] = byte(uint8(_src[i]));
        }
        return(string(_dest));
    }
    function unsignedToString(uint _len, uint256 _val) public pure returns (string memory) {
        bytes memory _dest = new bytes(16);
        for (uint i = _len - 1; i >= 0; --i) {
            _dest[i] = byte(uint8("0123456789")[(_val >> (i * 4))) & 0xf]);
        }
        return(string(_dest));
    }
    function arrayToString(address[] memory _arr) public pure returns (string memory) {
        bytes memory _dest = new bytes(128);
        for (uint i = 0; i < _arr.length; i++) {
            assembly {
                mstore(_dest, add(_dest, 32))
            }
            bytes memory str = bytes(_dest);
            for (uint j = _dest.length - 32; j >= i * 32; --j) {
                str[j] = byte(_arr[j - i * 32]);
            }
            assembly {
                mstore(add(_dest, 32), str)
            }
        }
        return(string(_dest));
    }
    function intToString(int256 _val) public pure returns (string memory) {
        bytes memory _dest = new bytes(32);
        for (uint256 i = 255; i >= 0; --i) {
            uint256 r = _val / (10 ** i);
            uint256 v = uint256(uint8(uint256(r) + uint256(r / 10) * 10));
            _dest[32 + i] = byte(uint8(uint8(uint256("0123456789")["0123456789"**(i - 1)]) * 10) + uint256(uint8(v) + uint8(uint256("0123456789")["0123456789"**(i - 1)])));
        }
        return(string(_dest));
    }
}
