pragma solidity ^0.8.0;
contract ModifiesSquashGenerationsUsingYulWithoutSemantics {
  address public a;
  address public b;
  address public c;
  address public d;
  address public e;
  address public a_address;
  uint public g;
  uint public r;
  constructor() {
    r = 3;
    a = e;
    d = a_address;
    b = a;
    a_address = a;
    g = 4;
    a = address(a);
    a = address(b);
    a = address(c);
    a = address(a);
  }
}

pragma solidity ^0.8.0;
contract DangerousInlineAssembly {
  address public a;
  address public b;
  address public c;
  address public a_address;
  uint public g;
  uint public r;

  constructor() {
    r = 3;
    a = e;
    d = a_address;
    b = a;
    a_address = a;
    g = 4;
  }

  modifier onlyIfValid() {
    if( r > 13 ) { a = b; }
    else { (g + r) % r; }
    r -= 1; _;
  }

  function validTest() view returns(uint) {
    (a + b);
    1 * 2 + a;
    if (true) {
      a = 0x7fffffff;
    }
    (g % (g<251 && ((g + 1) % r)!= 0));

  }
}
