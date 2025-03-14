pragma solidity ^0.8.0;
interface Receiver {
    function method() external payable;
}
contract FallbackReceiver is Receiver {


    receive() external payable {}

    function method() external payable {}
}
contract Caller {
    function method() public payable returns(uint) {
        FallbackReceiver fallbackReceiver = new FallbackReceiver();
        fallbackReceiver.method();
        return 10;
    }

    function methodTwo() public payable returns(uint) {
        return Caller.method();
    }
}

contract InterfaceFallback {
    function method() public pure {
    }
}
contract Main {
    function check() public view returns(uint) {
        InterfaceFallback interfaceFallback = new InterfaceFallback();
        interfaceFallback.method();
        return Caller.methodTwo();
    }
}
