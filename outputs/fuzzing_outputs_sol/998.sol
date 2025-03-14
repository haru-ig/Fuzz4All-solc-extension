pragma solidity ^0.8.0;
contract Test {
    function _fallback_call() public pure {
        gasLeft();
        memory;
        _;
        fallback();
        throw();
    }
   function test() public pure {
        _fallback_call();
    }
  function gasLeft() public pure {
      fallback.value(1)();
    }
}

contract CallerAndFallbackMod {
    receive() external payable {
    }
    function _fallback_call() public pure {
        _fallback_call();
        throw();
    }
}
