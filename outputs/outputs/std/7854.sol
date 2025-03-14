pragma solidity ^0.8.0;
contract Moved {
  uint i;

    function getMyName() public pure {
        i = 1e128;
        i++;
    }

    function getMyMemory() public pure {
        i++;
    }

    function getMyStorage() public pure {
        i++;
    }
}
