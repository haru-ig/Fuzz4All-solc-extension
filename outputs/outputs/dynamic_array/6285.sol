pragma solidity ^0.8.0;
library l {
  struct s {
    uint a;
    uint b;
  }
  function f(uint a, string memory b) public pure returns (s memory s1) {
    s1.a += a;
    s1.b += 1;
  }
}


library l {
  struct f022 {
    string a;
    string c;
  }
  function f() public pure returns (f022 memory memory) {
    string memory s;
    s += "one";
    f022 memory s2;
    s2.a = s;
    f022 memory s3;
    s3.a = s;
    s3.c = s2.a;
    f022 memory s4;
    s4.c = s;
    f022 memory s5;
    s5.a = s;
    f022 memory s6;
    s6.a = s;
    s6.c = s2.a;
    s6.b = s;
    s6.b[3] = 1;
    s6.b[2] = 2;
    f022 memory s7;
    s7.a = s5.a;
    string memory s8 = s7.c;
    s7.b[1] = 1;
    f022 memory s9;
    s9.a = s4.a;
    string memory s10 = s9.c;
    s9.b[2] = 2;
    s9.b[3] = 3;
    return s9;
  }
}
