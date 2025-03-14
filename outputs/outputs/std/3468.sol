pragma solidity ^0.8.0;
contract Convert {
    function intToHexBytes(uint _i) pure public returns (bytes memory) {
        bytes memory buf = new bytes(2*int(8*(_i).log2()));
        for(uint j = 0; (j < i); j++)
            buf[2*j] = bytes1(48 + ((_i>>(8*j)) & 0xf));
        return buf;
    }
    function hexIntToUint(bytes memory _bytes) pure public returns (uint) {
        uint val = 0;
        for(uint j = (_bytes.length()-1); j >= 0; j--) {
            uint n = (_bytes[j] - 0x30);
            val = ((val << 4)) + n;
        }
        return val;
    }
}

pragma solidity ^0.8.0;
contract Memory {
    function findAddressOfArray(address _a, uint _size) pure view public returns (uint[]) {
        uint [] memory s = new uint[](_size);
        for (uint y = 0; y < _size; y++) {
            s[y] = uint(uint(keccak256(abi.encodePacked((2**32 - 11) & _a)))) % (2**32));
        }
        return s;
    }
    function isAddressInArray(address _addr, uint[] memory _arr) pure view public returns (bool) {
        uint arrLength = _arr.length;
        for(uint x = 0; x < arrLength; x++)
            if (_addr == _arr[x])
                return true;
        return false;
    }
}
