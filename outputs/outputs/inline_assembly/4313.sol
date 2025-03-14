pragma solidity ^0.8.0;
contract SolidityAssemblyExample {
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    uint public e;
    mapping (address => uint) public f;
    constructor(uint Z) public {
        c -= c + 10;
        b += c + 1;
        a -= a + 1;
        c++;
        b--;
        c--;
        d = 2;
        f[msg.sender] = 40;
    }
    function increment(uint Z) public returns (uint) {
        return 5*Z;
    }
    function update() public {
        a += a + 42;
    }
}

pragma solidity ^0.8.0;
contract InlinedAssemblyExample is SolidityAssemblyExample {
  uint public a;
  mapping (address => uint) public f;
  constructor(uint Y) public {
      c += Y;
      a += Y;
      a++;
      c = 1;
      c++;
      c = c+1;
      c = c+1;
      b += b;
      a = 1;
      a++;
      b = block.number;
  }
  function increment(uint Y) public returns (uint) {
      return Y;
  }
  function update() public {
      f[msg.sender] = 100;
  }
}
