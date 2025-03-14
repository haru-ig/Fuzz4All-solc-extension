pragma solidity ^0.8.0;
contract ReceiveWithFallbacks {
    receive() external payable { }
}
contract Caller {
    address tokenContract;
    address fallbackContract;

    constructor(address _tokenContract, address _fallbackContract)
        receiveWithFallbacks(_tokenContract, _fallbackContract)
    {
        tokenContract = _tokenContract;
        fallbackContract = _fallbackContract;
    }

    function example() public returns(uint8) {
        if (callTransfer(tokenContract)) {
            require(fallbackContract, "Caller contract doesn't have a fallback.");
            fallback();
        } else {
            fallback();
        }
        return 0;
    }

    function callWithoutFallback() public returns (bool) {
        return  tokenContract.call.value(address(this).balance)("");
    }

    function callWithFallback() public returns (bool) {
        return!tokenContract.call.value(address(this).balance)("");
    }

    function receiveWithoutFallback() public {
        uint txFailCount;
        for(txFailCount = 0; txFailCount < 1; txFailCount++) {
        }
    }

    function receiveWithFallback() public {
        uint txFailCount;
        for(txFailCount = 0; txFailCount < 1; txFailCount++) {
        }
    }

    function callTransfer(address token) internal payable returns (bool) {
        (bool b, ) = token.call{value: msg.value}("");
        return b;
    }
}
