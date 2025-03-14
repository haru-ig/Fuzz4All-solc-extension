pragma solidity ^0.8.0;
contract mutatedCaller {
    receive() external { }
    function fallback() public { }
}
contract Simple {
    function f() public pure returns (uint) {
        return 0;
    }
}
contract Caller {
    function callWithFallbackAndReceive(CallType type) public view returns (uint) {
        switch (type) {
        case CallTypeNormal:
            uint x;
            (x,) = mutatedCaller.methods.callWithFallbackAndReceive(CallTypeNormal).call();
            break;
        case CallTypeNormalWithReceive:
            uint rx;
            (rx,) = mutatedCaller2.methods.callWithFallbackAndReceive(CallTypeNormalWithReceive).call();
            break;
        case CallTypeNormalWithOutGas:
            uint gx;
            (gx,) = Simple.methods.f().call();
            break;
        }
        return x;
    }
}
contract Caller2 {
    function callWithFallbackAndReceive(address _addr) public view {
        address payable a = address(this);
        (, payable(a)) = address.call(abi.encodeWithSignature("()"));
        a.transfer(_addr);
    }
}
contract Caller3 {
    function callWithFallbackAndReceive(address _addr) public view {
        uint x;
        (x,) = Simple.methods.f().call.value(0)();
        (address payable a = address(this),) = address.call(abi.encodeWithSignature("(address)"));
        a.transfer(_addr);
    }
}
contract CallerFour {
    function payableFallBackFunc(uint _x, uint _y) public pure returns (uint, address payable) {
        (address x,) = Simple.methods.f().call.value(_y)();
        return (_x, x);
    }
}
