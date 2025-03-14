pragma solidity ^0.8.0;
contract Convert {
    uint256 constant private one = 1;
    uint256 constant private ten = 10;
    function dec_to_hex(uint256 v) internal pure returns (string memory)
    {
        return bytes(uint2str(v)).substring(2).trim();
    }
    function hex_to_dec(bytes memory hex_) public pure returns (uint256) {
        (uint256 value, ) = abi.decode(hex_, (uint256));
        return value;
    }
    function bytes_to_hex(bytes memory b) public pure returns (string memory str) {
        str = "";

        bytes memory tmp = b;
        uint256 n = tmp.length;
        for (uint256 i = 0; i < n; i++){
              str = str+uint2str(uint8(tmp[i]))+":";
        }
        return str;
    }
    function uint8(uint8 a) internal pure returns (uint8) {
      return a;
    }
    function uint256(uint256 a) internal pure returns (uint256) {
      return a;
    }
    function hex(uint i) internal pure returns (byte) {
      return byte(uint8(i));
    }
    string internal function uint2str(uint a) private pure returns (string memory) {
      if (a == 0) {
        return "0";
      }
      uint j = 0;
      bytes memory bstr = new bytes(1);
      while (a > 0){
        bstr[j++] = uint8(48 + a % 10);
        a /= 10;
      }
      bytes memory b = new bytes(j);
      bstr.copyBytes(b, j-1);
      return string(b);
    }
    function str_to_bytes(string memory s) public pure returns(bytes memory) {
        bytes memory tmp = bytes(s);
        uint256 n = tmp.length;
        bytes memory bstr = new bytes(n);
        for (uint256 i = 0; i < n; i++){
            bstr[i] = tmp[i];
        }
        return bstr;
    }
}
