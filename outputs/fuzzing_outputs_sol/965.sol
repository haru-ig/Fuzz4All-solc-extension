pragma solidity ^0.8.0;
contract CallWithoutFallback {
    function foo() public pure returns (uint256) {
        return 1;
    }
    fallback() public {}
}

pragma solidity ^0.8.0;
contract CallWithFallbackAndReceiving {
    function bar() public payable payable {
        if (msg.value == 1 ether) {
          function () external payable payable {}
        }
    }
    fallback() public payable {}
    receive() public payable nonReceivingFallback() payable {}
}

pragma solidity ^0.8.0;
contract CallWithoutFallbackAndReceiving {
    function bar() public {
        if (msg.value == 1 ether) {
          callThisWithoutFallback;
        }
    }
    function callThisWithoutFallback() public {}
    fallback() public payable {}
    receive() public payable nonReceivingFallback() payable {}
}
