pragma solidity ^0.8.0;
contract MutatedSemantics {
    uint[4] public foo;
    uint[4] public bar;
    uint public c;
    function test() public {
        foo[1] = 2;
        c = c+1;
        foo[2] = 4;
        foo[3] = 8;
        bar[4] = 16;
        bar[3] = bar[2];
        bar[0] = bar[1];
        bar[1] = bar[3];
        bar[2] = bar[4];
        bar[1] = bar[2];
        bar[0] = foo[2];
        foo[2] = c;
        c = c+2;
        foo[3] = bar[3];
        bar[2] = c;
        c = c+4;
        foo[2] = foo[2];
        c = c+8;
    }
}


pragma solidity ^0.8.0;
contract CallReceiver {
    uint public a;

    function test() public {
        if(a < 10) {
             a = a+1;
        }
        else if(a < 50){
           receive();
        }
    }

    function receive() public pure {

        require(true,"Contract cannot receive Ether");
    }
}


library MovedSemantics {

  function test() public payable {


    require( false,"Contract has no fallback statements");
  }
}


library MutatedSemantics {

  function test() public non
