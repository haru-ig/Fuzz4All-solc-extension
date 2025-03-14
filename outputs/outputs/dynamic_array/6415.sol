pragma solidity ^0.8.0;
contract c {
  uint8 [] s;
  function f() public {
    uint8 s_i;
    for(uint8[2] memory s_mem : s) {
      s_i = s_mem[1];
      s.push(s_i);
    }
    s.pop();
  }
}


pragma solidity ^0.8.0;
contract c {
    uint8[] memory s;
    function f() public {
        delete s[s.length-1];
        uint8 s_i = s[s.length-1];
        s.push(s_i);
        s.pop();
    }
}

pragma solidity ^0.8.0;
contract c {
    uint8 [] s;
    function f () public {
      uint8 s_i;
      for (uint i; i < 2; ++i) {
        s[s.length-i] = uint8(255);
        s_i = s[s.length-i];
        s.push(s_i);
      }
    }
}
