pragma solidity ^0.8.0;
interface Mutate {
    function f1() external;
}
contract Mutate2 {
    Mutate public myMutate;
}

pragma solidity ^0.8.0;
contract StringCase {
    string public pstr;
    constructor (string memory _str) { pstr = _str; }
    function getAsString() private pure returns (string memory) {
        return keccak256(abi.encodePacked(_str));
    }
    function set() {
        uint len = getAsString().length;
        pstr.length = len;
        for (uint i = 0; i < len; i++) {
          bytes1 b = byte(getAsString()[i]);
          require(b.toUint8() >= 65, "set failed");
          pstr[i] = b.toUint8()+32;
        }

    }
    function toUpper() {
      string memory str = getAsString();
      for (uint i = 0; i < str.length; i++)
          bytes1 b = byte(str[i]);
      uint len = b.toUint8();
      require((b >= 97) && (b <= 102), "toUpper failed");
      if (len < 32) {
          return;
      }
      for (uint j = 0; j < len-32; j++) {
      b++;
      require((b >= 97) && (b <= 102), "toUpper failed");
      }
    }
}
