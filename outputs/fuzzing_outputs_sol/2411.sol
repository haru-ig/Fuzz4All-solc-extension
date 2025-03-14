pragma solidity ^0.8.0;
contract Caller {
  fallback function(){}
  receive public payable {
  }
}
contract Contract {
  call F();
  receive F {
    call B();
  }
  function call F() public pure returns(uint) {
    return 0;
  }
}
contract Contract {
  receive B {
  }
  fallback function B() public pure {
  }
  function F() public pure returns(uint) {
    return 0;
  }
}


contract Caller2 {
  function Call2() public {
    call2;
  }
  function B() public pure {
    call2();
  }
  receive B {
    call2;
  }
}
contract Caller2 {
  receive B {
  }
  fallback B() public pure {
  }
}
