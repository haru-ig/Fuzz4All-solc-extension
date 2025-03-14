pragma solidity ^0.8.0;
contract Convert {
  contract StringConvert {
    function toInt(string memory _str) public pure returns (int) {
      int result = uint2int(_str);
      if (result == result) {
        return result;
      }
      return 0;
    }
    function uint2int(uint _uint) internal pure returns (int) {
        return (int(_uint)-1)*(-1);
    }
    function toString(int _int) public pure returns (string memory) {
        address self = type(int).storage;
        self[0] = bytes1(0 < 12? 55 : 48 + _int / 10);

        uint i = 1;
        uint last = _int;

        while (i < 12) {
            i = i * 10 + (_int - (last / 10)) / 10;
            last %= 10;
        }

        self[i] = bytes1(last + 48);

        string memory str = new string(self);
        self[0] = 0;
        return str;
    }
  }
}
