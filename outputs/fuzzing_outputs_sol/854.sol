pragma solidity ^0.8.0;
contract Caller {
    function fallback(uint256[] memory _arg) external nonReturnFallback(uint256[] memory _arg) {
    }
}

```
This solidity contract will throw an exception if it tries to fallback when contract has no fallback.

## References

[Solidity language reference](https:

[Payable fallback function](https:

[Fallback function documentation](https:

[Ganache contract tester](https:
