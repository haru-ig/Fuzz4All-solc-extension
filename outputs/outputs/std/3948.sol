pragma solidity ^0.8.0;
contract Convert {
    function toInteger(string memory p) public pure returns (uint) {
        bytes memory b = bytes(p);
        if (b.length == 0) {
            return 0;
        }
        uint temp = 0;
        bool sign = b[0] == '-';
        for(uint i = 1; i < b.length; i++) {
          uint digit = toDigit(b[i]);
          if (digit == 0) {
            return 0;
          }
          if (sign && digit > int(10**((b.length + 1) / 2))) {
            return 0;
          }
          temp = temp*int(10) + digit;
        }
        if (sign) {
          temp = -1*temp;
        }
        uint maxBitLength = (int(10**(b.length+1)) - 1) / 2;
        if (temp > uint(10**maxBitLength)) {
          return 0;
        }
        return temp;
    }
    function fromInteger(uint a) public pure returns (string memory) {
        uint sign = a < 0;
        uint digits = (uint(a) < 10)? 1 : 2;
        a = a / 10;
        while (a!= 0) {
            digits++;
            a = a / 10;
        }
        bytes memory b = new bytes(digits);

        for (uint i = digits-1; i > 0; i--) {
            b[i] = uint8(48 + a % 10);
            a = a / 10;
        }
        if (sign) {
          return "-" + string(b);
        } else {
          return string(b);
        }
    }
    function getInteger(uint pos) public view returns (uint) {
        uint digit = array[pos];
        do {
            digit /= 10;
        } while (digit!= 0);
        uint remainder = array[pos];
        if (remainder == 0) {
          return 0;
        }
        uint len = remainder.toString().length;
        if (len == 1) {
          return array[pos] + uint8(48 + remainder % 10);
        }
        return uint8(48 + remainder % 10) + remainder.toString().substring(len);
    }
    function setInteger(uint pos, uint a) public {
        int256 value;
        if (a < -0x10000) {
          value = uint256(a);
        } else {
          value =
