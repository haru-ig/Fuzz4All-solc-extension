pragma solidity ^0.8.0;
contract D {

  function get() public pure returns (uint) { }

  function set() public { }

  function set1() public { }

  function set2( string memory _ ) public { }

  function set3( int _ ) public { }

  function set4( uint16 _ ) public { }

  function set5( uint8_t _ ) public { }

  function set6( uint256 _ ) public { }

  function set7( uint256 _ ) public pure returns (uint) { return _ + 1; }
}


contract Test {
  function callGet() public view returns(uint) { return D.get(); }
  function callSet() public view returns(uint) { return D.get(); }
  function callSet1() public view returns(uint) { return D.set(); }
  function callSet2() public view returns(uint) { return D.set1(); }
  function callSet3() public view returns(uint) { return D.set3(uint(-1)); }
  function callSet4() public view returns(uint) { return D.set4(1); }
  function callSet5() public view returns(uint) { return D.set5(1); }
  function callSet6() public view returns(uint) { return D.set6(uint(-1)); }
  function callSet7() public view returns(uint) { return D.set7(uint(-2)); }
  function test() public pure {
    (uint a, uint b, uint c, uint d, uint e, uint f, uint g, uint h) = D.set7(uint(-1));
    (uint ai, uint bi, uint ci, uint di, uint ei, uint fi, uint gi, uint hi) = D.set7(uint(-2));
    assert(a == ai);
    assert(b == bi);
    assert(c == ci);
    assert(d == di);
    assert(e == ei);
    assert(f == fi);
    assert(g == gi);
    assert(h == hi);
  }
}
