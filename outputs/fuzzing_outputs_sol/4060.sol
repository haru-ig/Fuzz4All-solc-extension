pragma solidity ^0.8.0;
contract Caller {

    MutantFallback private mutantFallback;

    constructor(MutantFallback mutantFallback_) {
      mutantFallback = mutantFallback_;
    }

    function callEthereumWithReceive(uint256 _amount) public payable returns(uint256) {

      _amount = mutantFallback.myFallback(_amount);
      return _amount;
    }
}
