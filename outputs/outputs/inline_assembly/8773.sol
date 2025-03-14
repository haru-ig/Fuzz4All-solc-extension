pragma solidity ^0.8.0;
contract Test {
    function value() public view returns(bool) {
        assembly {
            let r := mload(0x40)
            mstore(0x40, and(mload(0x40), not(0)))
            mstore(0x0, add(not(0), mload(0x40)))
            r := and(r, xor(mload(0x0), not(0)))
            r := or(r, not(0))
            r := xor(r, r)
            r := or(r, or(mload(0x40), r))
            r := and(r, lsh(r, 1))
            r := and(r, xor(not(0), r))
            r := and(r, xor(r, mload(0x0)))
            r := and(r, xor(mload(0x0), add(or(not(0), mload(0x40)), r)))




            return or(r, and(or(or(not(0), mload(0x40)), mload(0x0)), mload(0x40)))
        }
    }
}
```

## Warnings

The `assembly` call is not allowed to use inline assembly.

When used with `emit`, the arguments must be provided in the same order as emitted data.

`gas` is not allowed to be used with `emit`.

## Additional Information

- [Solidity: assembly](https:
