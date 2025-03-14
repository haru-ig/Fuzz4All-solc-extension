pragma solidity ^0.8.0;

contract MainArray {
  IBytesArrayStorage internal store;
  uint256 constant size = 10;
  constructor(uint256[] memory a, bytes3[] memory b) public {
    for(uint i = 0; i < a.length; i++){

       store.doAppend(i, a[i]);
    }
    for(uint i = 0; i < b.length; i++){

      store.doUpdate(i, b[i], b[i]);
    }
  }
}

contract MemoryTest {

  uint public val;
  function doAdd(uint x, uint y) public {
    val = x + y;
  }
}


contract MemoryTest2 {
  function doAdd(uint x, uint y) public {

    val = x + y;
  }
}
