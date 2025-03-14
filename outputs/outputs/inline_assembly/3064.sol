pragma solidity ^0.8.0;
contract C {
  uint public a=0x10;
  uint public b;
  uint public c=a+b;
  function M() public {
    uint x=(a+b)*12/15*23%157;
    uint y;
    assembly { y:=add(m.slot(x), y, m._slot(k)) }
    uint z;
    assembly { z:=add(y, y, m._slot(k+1)) }
    c-=z;
    b-=z;
    a-=x;
    assert(c==1);
  }
}



pragma solidity ^0.8.0;
contract C {
  string constant private STR="Hello!";
  function greet() public pure returns(string memory) {
    return STR;
  }
}
