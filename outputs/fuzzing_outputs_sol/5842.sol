pragma solidity ^0.8.0;
contract FallbackTester {
    function test() public receive() payable {
        if(msg.value >= 100) throw;
        if(msg.value < 500) {


            if(msg.value < 100) throw;
            c = c+1;
        }
    }
}
contract FallbackTesterMutated {
    uint c;
    uint a;
    constructor() {
        c = 0;
        a = 1;
    }
    function test() public {
    if(c == 0){


        uint w = a;
        uint s = c;
        c = c+1;
        c = w;
        c = s;
      }
      uint s = c;
      c = c+1;
      c = s;
      if(a >= 1000) d = address(0);
      b = a+3;
    c = 3;
    }
  }


pragma solidity ^0.8.0;
contract Tester {
    uint c;
    uint a;
    uint d;
    uint b;
    address e;
    constructor() {
        c = 5;
        a = 1;
        d = 0;
        b = d+1;
    }
    function test() public {
   uint s = c;
    if(c >= 0){
      e = address(0);
      return;
    }
    uint s = c;
    c = b+1;
    c = 2;
    }
    function receive() payable {
    if(d == 0){



        uint w = a;
        uint s = d;
        d = d+1;
        d = w;
        d = s;
    }
    uint s = c;
    c += 1;
    c = s;
    if(a >= 1000) d = address(0);
  }
}
contract TesterMutated {
    uint c;
    uint a;
    uint d;
    uint b;
    address e;
    uint t;
    constructor()
