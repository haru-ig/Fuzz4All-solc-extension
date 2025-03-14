pragma solidity ^0.8.0;


contract MutantContract {
    function f() public pure {
        bytes32 x;
        assembly {
          x := 3(i)
        }
    }
}
