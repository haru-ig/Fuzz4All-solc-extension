pragma solidity ^0.8.0;
contract c {
  uint8 [] s;
  function f() public {
    s.length = 10 ;
    uint32 i;
    for (i = 1; i < s.length; i++)
      s[i]++;
  }
}
contract c {
  uint8 [] s;
  function f() public {
    s.length = s.length + 20;
    uint8 i;
    for (i = 1; i < s.length; i++)
      s[i]++;
  }
}
contract c {
  uint8 [] s;

  function f() public {
    uint32 i;
    for (i = 0; i < 20; i++)
      s[i]++;
  }
}
