pragma solidity ^0.8.0;
contract Mutator {
    EtherReceiver _there;
    modifier after {
        _there._receiveEtherIfPossible();
        _;
    }
    modifier before {
        _there._prepareToReceiveEtherIfPossible();
        _;
    }

    constructor(EtherReceiver ther) public {
      _there = ther;
    }
    receive() after {}
    receive() before {}
    receive() only payable {
        throw;
    }
}
