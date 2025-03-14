pragma solidity ^0.8.0;
contract Caller {
  Mutation1 fallbackCaller;
  Mutation2 fallbackReceiver;
  Mutation3 fallbackNotCall;
  function foo() public payable {
    fallbackCaller.myMutantFallback(80);
    fallbackReceiver.myMutantFallback(98);
    fallbackNotCall.myMutantFallback(80);
  }
}
