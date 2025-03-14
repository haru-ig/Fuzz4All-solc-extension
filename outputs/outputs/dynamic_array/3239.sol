pragma solidity ^0.8.0;
contract Mod {
    function mod(uint x) public pure returns (uint) {
        if (x < 0) return 0;
        else return (0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF - x);
    }
}

library test {

    function assert(bool a, string memory msg) internal pure returns (bool) {
        if (a) return true;
        else {throw new Error(msg);}
    }

    function assert_eq(uint a, uint b, string memory msg) internal pure returns (bool) {
        if (a == b) return true;
        else {throw new Error(msg);}
    }

    function assert_eq(string memory a, uint b, string memory msg) internal pure returns (bool) {
        if (a == b.toString()) return true;
        else {throw new Error(msg);}
    }

    function assert_eq(uint a, string memory b, string memory msg) internal pure returns (bool) {
        if (a == decode_hex(b)) return true;
        else {throw new Error(msg);}
    }

    function assert_eq(string memory a, string memory b, string memory msg) internal pure returns (bool) {
        if (a == b) return true;
        else {throw new Error(msg);}
    }

    function assert_strEq(string memory a, string memory b, string memory msg) internal pure returns (bool) {
        for (uint i = 0; i < a.length; i ++) {
            if (a[i]!= b[i]) return false;
        }
        return true;
    }

    function encode_hex(string memory a) internal pure returns (bytes memory rtn) {
      rtn = bytes(a);
      assert(rtn.length > a.length + 1, "Hex buffer too large");
      rtn[rtn.length - a.length] = '\0';
    }

    function decode_hex(string memory a_hex) internal view returns (bytes memory rtn) {
      bytes memory a = new bytes(a_hex.length);
      bytes memory next = bytes(1);
      for (uint i = 0; i < a_hex.length; i ++) {
        uint i_int = uint(uint8(a_hex[i]));
        next[0] = byte(i_int);
        a = a.concat(next);
        next = bytes(1);
      }
      assert((a.length == a_hex.length +
