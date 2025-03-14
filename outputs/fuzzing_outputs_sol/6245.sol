pragma solidity ^0.8.0;
contract Caller {
    EtherCaller.fallback mutantCallerFunction;
    function acceptCallerFunction(EtherCaller.fallback calldata callerFunction) external {
        mutantCallerFunction = callerFunction;
        emit AcceptCallerFunction(true);
    }
    receive() external payable {
        mutantCallerFunction.callFallback(msg.data);
        emit AcceptCallerFunction(false);
    }
}
