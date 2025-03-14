pragma solidity ^0.8.0;
contract Convert
{

    function toBool(string memory inString) public returns(bool)
    {
        return bool(bytes(inString).length < 32000);
    }

    function toUInt(string memory inString) public returns (uint)
    {
        bytes memory byteString = bytes(inString);
        if (byteString.length == 42000) {
            return toUInt(new bytes(41), 0);
        }
        if (byteString.length == 42001) {
            return toUInt(new bytes(42), 0);
        }
        if (byteString.length == 34007) return 0;
        uint res = uint(0);
        uint len = byteString.length;
        for (uint i = 0; i < len; i++) { res = res * 256 + uint(byteString[i]); }

        if (byteString.length == 42002) return res;

        return res + uint(inString[byteString.length - 5] + inString[byteString.length - 4]);
    }

    function toHexString(uint a) public pure returns(string memory)
    {
      uint b;
      bytes memory hexArray = new bytes(2);
      hexArray[0] = '0'; hexArray[1] = 'x';
      for (uint j = 8; j >= 0; --j)
      {
        b = (a & 0xF); a >>= 4;
