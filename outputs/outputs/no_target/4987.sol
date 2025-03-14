pragma solidity ^0.8.0;
contract A { function f(uint a) public view returns(uint){ return a; } }
contract BC { function f(uint8 a, uint16 b) public view {a += 2;} }
contract CA { function f(uint8 a) public view {assert(a > 0);} }
contract CB { function f(uint8 a) public view {assert(a >= 0);} }
contract CCB { function f(uint8 a) public view {assert(a >= 0);}  }
contract CC { function f(uint8 a) public view {assert(a >= 0);}  }
contract CCC { function f(uint8 a) public view {assert(a == 0);} }
contract BC2 { function f(uint8 a) public view {a += 2;} }
contract AB {
  constructor () { address(this).transfer(this.balance); }
  function f(uint8 a) public view {assert(a > 0);}
}
contract AB2 {
  constructor () { selfdestruct(msg.sender); }
  function f(uint8 a) public view {assert(a >= 0);}
}
