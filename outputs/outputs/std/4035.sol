pragma solidity ^0.8.0;
contract Convert {
    function fromInt(int x) internal pure returns(string memory) {
      if (x < 0) {
        return "-" + fromInt(-x);
      }
      uint len = uint(x.toString());
      bytes memory bstr = new bytes(len);
      bytes1 b = bytes1(x);
      bstr[0] = b;
      for(uint i = 1; bstr.length > i; i++)
        bstr[i] = b[i - 1];
      return string(bstr);
    }
    function fromUint(uint x) internal pure returns(string memory) {
      uint len = uint(x.toString());
      bytes memory bstr = new bytes(len);
      bytes1 b = bytes1(x);
      bstr[0] = b;
      for(uint i = 1; bstr.length > i; i++)
        bstr[i] = b[i - 1];
      return string(bstr);
    }
    function toInt(uint x) internal pure returns(string memory) {
      return fromUint(x);
    }
}

pragma solidity ^0.8.0;
contract Math {
    function sqrt(uint256 x) internal pure returns(uint256) {
      uint256 z = (x + 1) / 2;
      while(z < x)
        z = (x + z) / 2;
      return z;
    }
    function moduloPow(uint p, uint q, uint8[8] memory x) internal pure returns(uint) {
      require(q!= 0);
        uint8[64] memory tmp;
        tmp[0] = x[q];
        tmp[1] = x[q - 1];
        tmp[2] = x[3 * (q - 1)];
        tmp[3] = x[5 * (q - 1)];
        tmp[4] = x[7 * (q - 1)];
        tmp[5] = x[q + 1];
        tmp[6] = x[3 * (q + 1)];
        tmp[7] = x[5 * (q + 1)];
        tmp[8] = x[7 * (q + 1)];
        tmp[9] = x[q - 1];
        tmp[10] = x[q + 1];
        tmp[11] = x[3 * (q - 1)];
        tmp[12] = x[5 * (q - 1)];
        tmp[13] = x[7 * (q - 1)];
        tmp[14] = x[q];
        tmp[15] = x[3 * (q + 1)];
        tmp[16] = x[5 * (q + 1)];
        tmp[17] = x
