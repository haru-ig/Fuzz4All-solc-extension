pragma solidity ^0.8.0;
import "../caller/Caller.sol";
import "./MutatedCaller.sol";
contract ExampleContract {
    function get() pure public returns (uint) {
    }
    function fallback() payable {
        uint _a = get() + MutatedCaller.get();
        (bool _b, ) = address(MutatedCaller).call{value: msg.value}("");
        _a;
        bytes memory _c = new bytes(1);
        _c[0];
        _c[1];
        uint _d = 1;
    }
    function callToCaller() public {
        uint _val = get();
        Caller.get();
        (_val, uint _a);
        (uint _a,);
        (bool, uint _val);
        uint _val2 = get() + 1;
        (_val2, uint _val3);
        uint _a = 4 + 5;
        (bool _a, uint _b);
        bytes memory _c = new bytes(1);
        (_a, _b);
        (_a, uint(_b), uint(_a));
    }
}
contract Main is ExampleContract {
}
contract TestCallerFallback {
    function get() public pure returns (uint) {
        return 6;
    }
}
contract TestCallerNoFallback{
    function get() public pure returns (uint) {
        return 7;
    }
}
contract TestCallerReceiveFallback {
    function get() public pure returns (uint) {
        return 8;
    }
    fallback () public payable {
        uint _a = TestCallerNoFallback.get();
        (_a, uint _b);
    }
    receive() public payable {
    }
}
contract TestCallerReceiveNoFallback {
    function get() public pure returns (uint) {
        return 9;
    }
    fallback () public payable {
        uint _a = TestCallerFallback.get();
        (_a, uint _b);
    }
    receive() public payable {
    }
}
```
# A.2.3 Fallback with Exception

The example shows `fallback` modifier and `throw` instruction. If an exception is not thrown as expected, it can become confusing without taking action as well. Therefore, the examples in this section demonstrate how to implement fallback functions and throw exceptions while keeping the function's contract behaviour intact as per the documentation.

In an `exception ThrowingExampleContract { }` contract you can place a modifier that checks if `address x` is an owner of some specific contract address. If the address is not on the list of owners (as defined explicitly or implicitly in the constructor for the contract), an exception will be thrown.

```
/* Please create
