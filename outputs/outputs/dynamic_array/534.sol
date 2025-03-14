pragma solidity ^0.8.0;
contract test9
{
    address[] public myArray;
    uint m1;
    uint public v1;
    function test() public
    {
        uint m2 = 101;
        uint n2 = 100;
        myArray.push(address(0));
        m2 = m2 * 2;
        n2 = n2 + 100;
        m1 = m2;
        v1 = n2;
    }
}


```

```output
solidity-solium test.sol

Summary:
- Skipped: 3

Details:
  Test files: 1; Warn: 0; Errors: 0; Skipped: 3
  Warn: No Warnings Found
  Error: 1 Warning Found

  Warning Codes:
    ABIC: ABIC: 'bytes32[]' is not a hash, but a dynamic array of type 'bytes32[]'
    ABIC: ABIC: 'bytes32' is not a hash, but a dynamic array of type 'bytes32'

  Warning Messages:
    ABIC: ABIC: 'bytes32[]' is not a hash, but a dynamic array of type 'bytes32[]'
    ABIC: ABIC: 'bytes32' is not a hash, but a dynamic array of type 'bytes32'

```

---

## Next steps
We highly encourage the participation in future versions of Solidity to look at the current state of the world and our plans for smart contracts. As our primary goal is to become the most complete and flexible language ever and to encourage all members of our community to participate in Solidity, this program is intended to help you find where your interests of using Solidity fit.

Please feel free to drop any questions or queries to <EMAIL>.
