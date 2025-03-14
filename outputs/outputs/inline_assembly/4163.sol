pragma solidity ^0.8.0;
contract Mutators {
    function test_4 () public returns (uint256 res) {
        res = 11;
    }
    function test_2 () public returns (uint256 res) {
        res = 11;
    }
    function test () public returns (uint256 res) {
        res = test_2() + 1;
        res *= 2;
        res = res / 4;
    }
}

```

# Solidity
* [Official documentation](https:
* [Smart contracts Tutorial](https:

# Compilation errors
| Error
| ------------- | ------------- |
| Reassignment requires constant expression  | Expected a value for a constant, found a constant expression |
| Invalid opcode, reverting:    | Invalid operation: reverted:... |

# Resources
* [Programming the Open Web3 Ethereum Virtual Machine](https:
* [Solidity tutorial (Yul) and assembly (YASM)](https:
* [Solidity vs. Javascript](https:
