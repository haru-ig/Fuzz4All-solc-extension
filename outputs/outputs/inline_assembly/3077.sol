pragma solidity ^0.8.0;
contract Modif {
  uint public a;
  uint public b;
  uint public c;
  constructor(uint _a1, uint _b1, uint _c1) public {
    a = _a1;
    b = _b1;
    c = _c1;
    b++;
    a--;
  }
}

pragma solidity ^0.8.0;
contract Func {
  uint public a;
  uint public b;
  uint public c;
  constructor(uint _a1, uint _b1, uint _c1) public {
    a = _a1;
    b = _b1;
    c = _c1;
    b++;
  }
  function func() public {
    b++;
    a--;
    c++;
  }
}


pragma solidity ^0.8.0;
contract Testing {
  uint public a;
  uint public b;
  uint public c;
  constructor(uint _a1, uint _b1, uint _c1) public {
    a = _a1;
    b = _b1;
    c = _c1;
    b++;
  }
  function func() public {
    a = b+c;
    a = a+c+a;
    a = c-a-a;
    a += a-a;
    a = b-a+a;
    b == c;
    if(b>a) {
        a = b-a+a;
    }
    else { a = c*a+a; }
    a = a-a;
  }
}
