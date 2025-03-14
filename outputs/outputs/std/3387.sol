pragma solidity ^0.8.0;
interface ArrayMutatorMutatorMutator_V {
  function setVal(uint i, uint i2, uint value) external;
  function addI(uint i, uint i2) external;
  function removeI(uint i) external;
}
contract Tests_ArrayMutatorMutatorMutatorMutator {
  ArrayMutatorMutatorMutator_V arrayv;
  uint[] memory sarr;
  uint256[] memory sarr2;
  uint[99] memory sarr3;
  mapping(bytes3 => bool) memmap;

  function __test_set_zero() public {
    sarr.push(0);
    sarr2.push(0);
    sarr3.push(0);
  }

  function __test_set_one() public {
    sarr.push(1);
    sarr2.push(1);
    sarr3.push(1);
  }

  function __test_set_neg_one() public {
    sarr.push(-1);
    sarr2.push(-1);
    sarr3.push(-1);
  }

  function __test_set_zero_i(uint i, uint value) public {
    sarr[i] = value;
  }

  function __test_add_i(uint i) public {
    sarr[i] += 2;
  }

  function __test_add_to_one() public {
    sarr.push(1);
    sarr2.push(1);
    sarr3.push(1);
  }

  function __test_remove_zero() public {
    sarr[0] = 0;
  }

  function __test_sort() public {
    uint i;
    for (i = 1; i < sarr.length; i++) {
      if (sarr[i] < sarr[i - 1]) {
        arrayv.swapI(i, sarr[i - 1]);
      }
    }
  }

  function __test_sort2() public {
    uint i;
    for (i = sarr.length; i > 0; i--) {
      arrayv.swapI(0, i - 1);
    }
  }

  function __test_add_memory_int() public {
    uint i;
    sarr.push(i);
  }

  function __test_add_memory_bytes(bytes memory _test) public {
    uint i;
    sarr.push(_test);






  }

  function __test_add_constant_i() public {
    bytes2 b;
    b = bytes2(i);
  }

  function __test_add_constant_
