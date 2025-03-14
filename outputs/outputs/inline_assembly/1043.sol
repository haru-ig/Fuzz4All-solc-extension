pragma solidity ^0.8.0;

contract MyContract {
  uint constant SOME_CONST = 2323232323;
  uint constant public SOME_CONST2 = 2111111111;
  uint constant private SOME_CONST3 = 255;
  function getSomeConst() public returns (uint) {
    return SOME_CONST;
  }
  function getSomeConst2() public returns (uint) {
    return SOME_CONST2;
  }
  function getSomeConst3() public returns (uint) {
    return SOME_CONST3;
  }
}
contract MutatedContract {
  MyContract myContract;
    constructor() {


        myContract = new MyContract();
    }


    function myGetSome() public {
        uint previousConst = myContract.getSomeConst();

        previousConst = SOME_CONST;

        myContract.setSomeConst(SOME_CONST2);
    }
}
