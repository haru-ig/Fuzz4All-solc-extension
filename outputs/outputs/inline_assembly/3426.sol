pragma solidity ^0.8.0;
contract PreMutability {
  uint internal constant EMPTY = uint(-1);
  uint public constant value1;
  uint[] internal value2;
  constructor () public {
    value1 = EMPTY;
    value2 = new uint[](3);
    value2[0] = 0;
    value2[1] = 1;
    value2[2] = 2;
  }
  function setValue (uint i_) public {
    value1 = EMPTY;
    value2 = new uint[](3);
    value2[0] = 0;
    value2[1] = 1;
    value2[2] = 2;
  }
  function remove (uint i_) public {
    value2[i_] = EMPTY;
  }
  function get () public view returns (uint, uint, uint) {
    return (value1, value2[1], value2[2]);
  }
  function set (uint i, uint x) public {
    value2[i].value = x;
  }
}

```

## Test Cases
1. Test case for the `PreMutability` contract in the `PreMutability.sol` file as shown below:
    - Expected output: 24 is stored in `x`.
    - Result: 4545. (Actual output may be different due to different order of calls when testing and/or compiler features is used)

2. Test case for the `PreMutability` contract in the `PreMutabilityMutated.sol` file as shown below:
    - Expected output: 12 is stored in `x`.
    - Result: 12. (Actual output may be different due to different order of calls when testing and/or compiler features is used)

    - Expected output: (12) should be stored in `x`, (13) should be stored in `x` and (14) should be stored in `x`.
    - Result: (12) should be stored in `x`, 13, and 14 should be stored in `x`.

        (12 should be returned due to the ordering requirement when `x` is updated in two mutated contract for testing purposes)


## How to Contribute
- [Go to the Documentation](#doc)
- [Report bugs and request features](#report)
- [Read the Code of Conduct](#coc)
