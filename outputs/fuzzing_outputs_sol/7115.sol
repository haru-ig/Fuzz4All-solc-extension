pragma solidity ^0.8.0;
address fallbackSender;
contract MutatedCaller {
    function test() public {
        fallbackSender.call{value: 0}(abi.encodeWithSignature("test()"));
    }
}
contract Caller {
    function test() public {
        fallbackSender.call{value: 0}(abi.encodeWithSignature("test()"));
    }
    function fallback() public {
        fallbackSender.call{value: 0}(abi.encodeWithSignature("fallback()"));
    }
    receive() external payable {
    }
}
