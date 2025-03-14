pragma solidity ^0.8.0;
contract Test46_Semantics6 {
    uint public  A;
    uint public  B;
    uint test;
    uint modifier test3() {
        _;
        assert(test == 0);
    }
    modifier test4()  {
        _;
        test = 1;
    }
    constructor()  public {
        A = 1;
        B = 1;
        A += 1;
        B += 1;
        test += A / 25;
        test += B / 105;
        test3() test4();
    }
}
{


    A := 2;
    A += 2;

    A := 3;
    B := 3;
    _; B := 5;

    test := 5;
    test += msg.sender.balance / 25;
    test += 5;

    require(test == 0);

    _; B := 5;

    test := 10;
    test += 50;

    B := 3;
    _;test -= 10;

    test2;
    assert(test == 1);
}


bytecode-evm-output

A := 2;
A += 2;

A := 3;
B := 3;
B := 5;
_; B := 5;

test := 5;
test += msg.sender.balance / 25;
test += 5;

require(test == 0);

_; B := 5;

test := 10;
test += 50;

B := 3;
_;test -= 10;
{


  A := 1;
  B := 1;
  A := 2;
  A += 1;
  B := 2;
  B := 3;
  A := 2;
  _; _;

  test := 0;
  A := 2;
  B := 25;
  _; test += msg.sender.balance / 25;
}
