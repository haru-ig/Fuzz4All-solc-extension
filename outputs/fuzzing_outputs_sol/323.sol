pragma solidity ^0.8.0;
fallback(uint256) public {

    throw;
}
contract CallFallbackFunctionThreePlusFallback_1_O {
    receive() external payable {}
}

pragma solidity ^0.8.0;
fallback(address payable) public pure {}
contract CallFallbackFunctionThreePlusFallback_2_O {
     receive() external pure {}
}

pragma solidity ^0.8.0;
contract CallFallbackFunctionThreePlusFallback_3_O {
    fallback(uint256) public payable {}
}

contract CallFallbackFunctionThreePlusFallback_3_S {
    CallFallbackFunctionThreePlusFallback_3_O Caller;
    receive() public payable {
        emit ReceivedPay(address(Caller));
    }
    receive() public payable {
        emit ReceivedPay(address(Caller));
    }
}
contract CallFallbackFunctionThreePlusFallback_0_S {
    CallFallbackFunctionThreePlusFallback_0_O Caller;
    receive() public payable {
        emit ReceivedPay(address(Caller));
    }
    receive() public payable {
        emit ReceivedPay(address(Caller));
    }
}
contract CallFallbackFunctionThreePlusFallback_1_S {
    CallFallbackFunctionThreePlusFallback_1_O Caller;
    receive() public payable {
        emit ReceivedPay(address(Caller));
    }
    receive() public payable {
        emit ReceivedPay(address(Caller));
    }
}
contract CallFallbackFunctionThreePlusFallback_2_S {
    CallFallbackFunctionThreePlusFallback_2_O Caller;
    receive() public payable {
        emit ReceivedPay(address(Caller));
    }
    receive() public payable {
        emit ReceivedPay(address(Caller));
    }
}
