pragma solidity ^0.8.0;
contract CallerFallback {
    function fallback() external {
        emit FallbackCalled({value:0});
    }


    receive() external payable {
        emit ReceiveEtherCalled({value: msg.value});
    }
}
