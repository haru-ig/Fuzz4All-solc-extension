pragma solidity ^0.8.0;
interface Receiver {

    function callback() external;
}
contract Mutator implements Caller2 {

    function fallback() external payable {
        Reciever storage receiver = receiverChain.receiveChain;
        receiver.callback();
    }

    address[] lastCallers;
    address[] callerChain;

    receive Chain {
        address[] memory callees = receiverChain.nextCalls;
        while (true) {
            if (callees.length == 0) break;
            lastCallers.push(msg.sender);
            callerChain.push(lastCallers.length);
            callees.pop().call{value:5 ether}("");
            delete lastCallers[lastCallers.length-1];
        }
    }

    struct Chain {
    	address[] receiveChain;
    }

    Chain receiverChain = Chain({receiveChain : lastCallers});
}
