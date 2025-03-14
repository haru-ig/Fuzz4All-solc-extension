pragma solidity ^0.8.0;
contract Mutator {
    function mutated (uint) public pure returns (uint) {
        return 1;
    }
}
contract MutatorFallback is mutatorfallback.MutatorFallback {
    function mutatedFallback (address receiver, uint amount) pure public {

        emit LogMutatorFallback(1);
    }
}
contract TestCaller {
    function sendEtherTo (address receiver, uint amount) public payable {
        EtherReceiver(receiver).sendEartherTo(msg.sender, amount);
    }
}
contract TestCaller03 {
    function sendEtherTo (address receiver, uint amount) public payable {

        EtherReceiver(receiver).sendEartherTo((address)(fallback()), amount);
    }
}
contract Caller is mutatorFallback.MutatorFallback {
    function mutatedFallback (address receiver, uint amount) pure public {

        EtherReceiver(receiver).withdrawEther(amount);
    }
}
