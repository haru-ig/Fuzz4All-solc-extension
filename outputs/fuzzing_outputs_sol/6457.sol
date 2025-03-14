pragma solidity ^0.8.0;
contract C {
    uint public x = 1;
    fallback() external {}
}

pragma solidity ^0.8.0;
contract D {
    uint public x = 1;
    receive() external payable { x++; }
    fallback() external payable {}
}

contract FallbackToCall {
  function () external payable {}
}

contract Caller {
    fallbackToCallFallback();

    function fallbackToCallFallback() public {
        C contract1 = new C();
        C contract2 = new C();
        C contract3 = new C();
        D contract4 = new D();
        FallbackToCall contract5 = new FallbackToCall();

        require (contract6.delegateCall() == 42);

        contract2.delegateCall().value(10)();

        contract1.delegateCall().value(10)();

        contract3.delegateCall().value(10)();
    }
}
