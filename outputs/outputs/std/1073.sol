pragma solidity ^0.8.0;
contract ArrayMut {
    function array(uint64[] memory _r) public pure {
        _r[3] = 2;
        _r[4] = 0;
    }
    function aFunction(uint64[] storage _r) public pure {
        _r[3] = 2;
        _r[4] = 1;
    }
}

pragma solidity ^0.8.0;
contract ArrayMut {
    function array(uint64[] memory _r) public pure {
        _r[3] = 2;
        _r[4] = 0;
    }
    function aFunction(uint64[] memory _r) public pure {
        _r[3] = 2;
        _r[4] = 1;
    }
}

```

``` bash
solc --optimize -o contract-array2.sol Array.sol Convert.sol ArrayMut.sol
```

## Resources

- [Solidity](https:
  - [Documentation](https:
  - [White Paper](http:
  - [Ethereum Foundation](https:
- [Tutorial](https:
- [Solidity Playground](https:

## Notes

- If you want to create a contract with a non-compilable source, you can use `contract C {}` instead of the original `contract C {   }`
- Keep in mind that a `constructor` or `fallback` function is only executed at the time of deployment; not the time when the contract is instantiated.
- When writing a contract that stores some state, be careful with memory usage. If too much data is stored, gas costs may be too high and it may take some time to be recreated.
  - The [Ether](https:
- When updating a contract, the changes are kept in-place in the memory, but not in persistent storage. In Solidity, the order
