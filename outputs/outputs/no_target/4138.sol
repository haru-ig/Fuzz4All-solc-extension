pragma solidity ^0.8.0;
interface G{ function g() internal constant returns (uint8 g); }
contract C{ function f() public view returns (uint8 y); }
contract C6{
  function f() public constant returns (uint);
  function f2() public constant pure returns (uint);
  function f3() public constant returns ();
}
contract G1{
  function f() public view { }
}
contract G6{
  function f() public { }
  function f2() public returns {}
}
contract G2{
  function f() public pure { }
}
contract G4{
  function f() public { }
  function f2() public { }
  function f3() public { }
}
contract G3{
}
contract G5{
  function f() public pure constant returns {}
}
contract G7{
  function f() public pure returns { uint a; }
  function f2() public pure { }
}
contract G12{
  function f() public pure constant {}
}
contract G9{
  function f() public pure {}
  function f2() public pure returns {}
}
contract T1{
  function f() public pure constant {}
  function f1() public pure constant {}
  function f2() public pure constant {}
}
contract T2{
  function f1() public pure constant { }
  function f2() public pure constant { }
}
contract T3{
  function f1() public pure view { }
  function f2() public pure view { }

  function f3() public pure view constant { }
  function f4() public pure view constant { }
  function f5() public pure view constant { }
}
contract T4{
  function f1() public pure view { }
  function f2() public pure view { }
}
contract T5{
  function f1() public pure view {}
  function f2() public pure view {}
}
contract T6{
  function f() public pure view {}
  function f1() public pure view returns {}
  function f2() public pure view returns {}
}
contract T7{
  function f1() public pure view {}
}
contract T8{
  function f() public pure{}
  function f1() public pure{}
  function f2() public pure{}
  function f3() public pure {}
}
contract T9{
  function f1() public pure{}
}
contract T10{
  struct S1 {uint1 uint;}
  struct S2 {uint2 uint;}
  uint8 public p1;
  function f() public pure {}
  function f2() public pure {
    S1 memory m;
    S2 memory m2;
    uint t=uint(m.uint);
    uint t1=uint(m2.uint);
    uint t2=uint(m);
    uint t3=uint(m);
    uint t4=address(uint(m));
    uint t5=byte(uint
