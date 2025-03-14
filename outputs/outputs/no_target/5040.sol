pragma solidity ^0.8.0;
contract C38_bug404933976320 {
  uint88 a = -2 ** 48;
  uint88 b = -2 ** 46;
  function incr() public { b += 1; }
  function get() external view returns (uint88 c) { return a - b; }
  function set() public { a -= 1; }
}

pragma solidity ^0.8.0;
contract C38_bug404933976324 {
  uint88 a;
  uint88 b;
  function func() public view returns (uint88 c) {
    a = -2 ** 48;
    b = -2 ** 46;
    a -= b;
    c = b;
  }
}

pragma solidity ^0.8.0;
contract C38_bug404933976326 {
  uint88 a;
  uint88 b;
  function func() public view returns (uint88 c) {
    b -= a;
    a = -2 ** 48;
    c = b;
  }
}

pragma solidity ^0.8.0;
contract C38_bug404933976327 {
  uint88 a;
  uint88[] memory b;
  uint88 c;
  function func() public view returns (uint88[] memory d) {
    a = -2 ** 48;
    b.push(a);
    for (uint i=0; i<b.length; i++) {
      c = a - b[i];
    }
    b.push(c);
    b.shift();
  }
}

pragma solidity ^0.8.0;
contract C38_bug404933976328 {
  mapping (uint88 => uint160) a;
  a[0] = 0;
  a[0].add(1) > c;
  a[0].add(1) > c; a[0].sub(3) > c;
  uint160 r = 1; a[0].mul(1).sub(1).mul(1).div(r);
  a[0].eq(b);
  a[0].gt(b); a[0].le(b);
  uint160 i = 1; a[65535] = i; a[
