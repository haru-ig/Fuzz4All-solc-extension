pragma solidity ^0.8.0;
contracts CallerMutatorExample {
  function callerFail() public pure returns(bool) {
    bool returnTrueFalse = true;
    bool returnFalse;
    (returnFalse,) = msg.value > 0;
    bool returnEverythingTrueFalse;
    boolean returnNullFalse;
    (returnNullFalse,) = 0 == 0;
    bool returnTrueFalseTrueFalse = true && true && true;
    bool returnVoidTrueFalseTrueFalse = true && true && true;
    bool returnTrueFalseFalse;
    (returnTrueFalseFalse,) =!true && true;
    bool returnEverythingFalse;
    (returnEverythingFalse,) = callerReturnTrue();

    if (!false) {
      Contract aContractInstance = new CallerExample();


    }

    if (!true) {
      Contract bContractInstance = new CallerExample();


    }

    if (false) {
      Contract cContractInstance = new CallerExample();


    }

    if (true) {
      Contract dContractInstance = new CallerExample();


    }
  }
}
