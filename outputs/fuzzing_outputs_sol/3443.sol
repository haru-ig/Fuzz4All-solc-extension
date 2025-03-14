pragma solidity ^0.8.0;
contract MutatedCaller {
    function sendWithoutFallback {
        _fallback();
    }
    function sendWithFallback {
        _fallback();
    }
    function _fallback() internal payable {
    }
}
