pragma solidity ^0.8.0;
contract ModifyGen {
    function fallback() public payable {
        call();
    }
    function call() public{
        msg.value = 100;
    }
}

contract Caller {
    fallbackImpl ImplFallbackCaller;
    fallbackImpl callImplFallbackCaller;
    fallbackImpl ReceiveImplFallbackCaller;
    fallbackImpl ReceiveFunctionImplFallbackCaller;

    constructor() public {
        ImplFallbackCaller.fallback();
    }

    function sendToImplFallbackCaller() public payable {
        ImplFallbackCaller.fallback();
    }

    function sendToCallImplFallbackCaller() public payable {
        callImplFallbackCaller.fallback();
    }

    function sendToReceiveImplFallbackCaller() public payable {
        ReceiveImplFallbackCaller.fallback();
    }

    function sendToReceiveFunctionImplFallbackCaller() public payable {
        ReceiveFunctionImplFallbackCaller.fallback();
    }

    fallbackImpl IInterfaceFallbackCaller {
        function fallbackImplFallback () public {
            ImplFallbackCaller.fallback();
        }
    }

    fallbackImpl IIInterfaceFallbackCaller {
        function fallbackImplFallback () public pure {
            ImplFallbackCaller.fallback();
        }
    }

    fallbackImpl IInterfaceFallbackCallCaller {
        function fallbackImplFallback () public {
            callImplFallbackCaller.fallback();
        }
    }

    fallbackImpl IIInterfaceFallbackCallCaller {
        function fallbackImplFallback () public pure {
            callImplFallbackCaller.fallback();
        }
    }

    fallbackImpl IInterfaceFallbackReceiveCaller {
        function fallbackImplFallback (uint256) public pure {}
    }

    fallbackImpl IIInterfaceFallbackReceiveCaller {
        function fallbackImplFallback (uint256) public pure {}
    }

    fallbackImpl IInterfaceFallbackReceiveFunctionCaller {
        function fallbackImplFallback () public {
            ReceiveFunctionImplFallbackCaller.fallback();
        }
    }

    fallbackImpl IIInterfaceFallbackReceiveFunctionCaller {
        function fallbackImplFallback () public pure {
            ReceiveFunctionImplFallbackCaller.fallback();
        }
    }
}
