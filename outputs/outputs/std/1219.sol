pragma solidity ^0.8.0;
contract C6 {
   function get(int _int) public pure virtual returns (int) {
      uint8 _x = 1;
   }
}
contract C7 {
   function f0() public {
      C5 f;
      int b = f.modint(-15);
      int b_1 = f.modint(0);
      if (b == b_1) {return;}
      int b_2 = f.modint(-14);
      if (b_2 == (b - 1)) {return;}
      int b_3 = f.modint(-13);
      if (b_3 == (b - 2)) {return;}
      int b_4 = f.modint(-12);
      if (b_4 == (b - 3)) {return;}
      int b_5 = f.modint(-11);
      if (b_5 == (b - 4)) {return;}
   }
}
