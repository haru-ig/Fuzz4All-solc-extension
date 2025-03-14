pragma solidity ^0.8.0;
contract Semantics_inline2 {
  uint x= constant3;
  uint y = constant6;
  inline function foo() public pure returns (uint) {
    return (constant4 - x);
  }
  inline function bar() public pure returns (uint) {
    return (y - x);
  }
}
contract Semantics_inline {
	struct State {
	    uint constant constant1 = 600, constant2=99, constant3 =300, constant4 =500, constant5=500;
	    uint constant constant6 = 500, constant7=500;
	}
	function foo() public pure returns (uint) {
	  return (constant1 - 101);
	}
	function bar() public view returns (uint) {
	    uint x;
	    uint y;
	    assembly {
          x:=  sub(101,add(const2,const3))
          y:= sub(const5, x)
          }
	    return (y - x);
    }
}
