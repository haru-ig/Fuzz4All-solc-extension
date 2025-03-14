pragma solidity ^0.8.0;
contract Mutate10 is Mutate9{
    uint public _3;
    uint public _4;
    uint public _5;
    uint public _6;
    uint public _7;
    uint public _8;
    uint public _9;
    constructor() public{
      _3 = 4605;
      _4 = 13195;
      _5 = 206;
      _6 = 11;
      _7 = 1579;
      _8 = 114;
      _9 = 8237;
    }
    modifier onlyAdd {
      _3 += 10;
      _4 += 20;
      _5 += 5;
      _6 += 7;
      _7 += 10;
      _8 += 11;
      _9 += 21;
      _;
    }
}
