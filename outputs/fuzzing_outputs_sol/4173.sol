pragma solidity ^0.8.0;
contract MutatedCaller{
    function _fallback() internal pure {}
    function _receive() public pure {}
}

pragma solidity ^0.8.0;
contract MutatedCaller2{
    function _fallback() internal pure {}
    function _fallback2() internal pure {}
}

pragma solidity ^0.8.0;
contract MutatedCaller3{
    struct Caller{
        FallbackCaller _fallbackCaller;
    }
    Caller _callerInstance;
    function() public payable {
        require(msg.value == 1 ether,"must send 1 ether for contract tests");
        _callerInstance.fallback();
    }
    function _fallback() internal pure {
        _callerInstance._fallbackCaller.receive();
    }
}
