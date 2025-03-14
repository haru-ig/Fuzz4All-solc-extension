pragma solidity ^0.8.0;
contract Convert {
  function convert(uint i) public pure returns(uint) {
    bytes memory t1 = bytes(uintToString(i));
    bytes memory t2;
    assembly { t2 := add(t1, 0x20) }
    return uint(abi.decode(t2, (uint)));
  }
  function uintToString(uint x) public pure returns (string memory s) {
    if (x == 0) {
       return "0";
    } else {
      uint i;
      for (i = 0; i < 17; ++i) {
       s = "0" + s;
      }
      s = s + uintToString(x/10);
      uint n = uint(uint(uint("10") ** 17) * x);
      if (n > 0) {
       uint j;
       for (i = 2; uintToString(n)[i] == "0"; ++i) {
        --i;
       }
       for (j = uintToString(n)[0..i]; i >= 0; --i, --j) {
        s = "0" + s + uintToString(uint("10")**2**(i + 1)) + j;
       }
      }
      return s;
    }
  }
}

pragma solidity ^0.8.0;
contract Math {
  function sqrt(uint x) public pure returns(uint) {
    uint[] memory y;
    y[0] = x;
    return sqrt2(y);
  }
  function sqrt2(uint[] memory x) public pure returns(uint) {
    uint sum;
    for(uint i = 0; i < x.length; ++i) {
      uint b = ((uint("2") ** (1/2*(x.length - i)))-1);
      sum += b * ((uint("2") ** (1/(2*(x.length - i))))+1);
    }
    return sum;
  }
}
