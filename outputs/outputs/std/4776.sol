pragma solidity ^0.8.0;
contract D {
  struct Dto {
    uint32 i;
  }
  function d() public pure returns (Dto memory) {
    return (Dto{i: 1});
  }
}


contract C {
    function c() public pure returns (uint16 memory) {
        int256[] memory arr = [5, 45];
        return (uint16(arr[45 / 0]));
    }
}
