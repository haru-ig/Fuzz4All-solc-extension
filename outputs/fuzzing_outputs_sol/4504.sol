pragma solidity ^0.8.0;
contract ExampleFallback {


    function fallback() payable public {
    }
}
contract FallbackSame {
    function f() public {
        ExampleFallback same = new ExampleFallback();
        same.fallback.value(0)();
    }
}
contract ContractCallerFallback {




    function payableFallback(address payable receiver) payable public {
        receiver.transfer(msg.value);
    }
}
contract Call {
    function call(address a) public {
        if (a.call.value(msg.value)()) {
            a;
        }
    }
}
contract ContractCalled {
    address public contractAddress;
    function get(SemanticSame same) public {
        a;
        a.get();
        same.get(3);
        same.get();
    }
    function getCalledContract() public view returns (CalledImpl) {
        if (contractAddress == address(0))
            return CalledImpl(new SomeDummy());
        return new CalledImpl(contractAddress);
    }
    function fallbackCaller() public payable {
        contractAddress.transfer(msg.value);
    }
}
interface SemanticDummy {
    function get() public view returns (uint);
}
contract SomeDummy is SemanticDummy {
    function get() public pure pure returns (uint) {
        return 1;
    }
}
contract ContractCalledImpl is ContractCalled {
    function get(SemanticSame same) public view returns (CalledImpl) {
        ContractCalledImpl instance = ContractCalled(address(this));
        instance.get(same);
        instance.getCalledContract();
        return CalledImpl(contractAddress);
    }
}
contract Example0 {
    uint x = 1;
    uint y;
    uint z = 2;
    function z() {
        x = 1;
        y = 3;
    }
    function f() {
        x = 1;
        y;
        z;
    }
}
contract CallFalls {
    function callFalls(uint x) public {
        z = x;
        CallImpl.f();
        z = x;
        x;
        y;
        z;
    }
    function callFallsByZero(uint x) public call {
        y;
    }
}
contract Example {
    function test() public {
        if (isContract(address(this))) {
            callFalls(4);
            example();
        } else {
            foo();
            foo(5);
        }
    }
    function foo() public {
        callFallsByZero(4);
    }
    function contract1() public payable {
        contractCalled.getCalledContract();
        x;
        y;
        f();
        Call.
