pragma solidity ^0.8.0;

contract Caller {
    function call(
        ForwardCompatibility f1,
        BackwardCompatibility f2
    ) public payable {
      f1.fallback();
      f2.fallback();
    }
}
