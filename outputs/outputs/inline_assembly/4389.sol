pragma solidity ^0.8.0;
assembly {
    let _a := mload(0x40)
    let _b := mload(0x41)
    let _c := mload(0x42)
    let _d := mload(0x43)
    let _e := calldataload(0x44)
    let _f := mload(0x45)

    mstore(_a, _b | mload8(_c))
    mstore(_b, _b | mload8(_c) << 8)
    mstore(_c, _b | mload8(_c) << 16)
    mstore(_d, _b | mload8(_c) << 24)
    mstore(_e, not(_a) | not(_e))
    mstore(_f, or(mload(_a) - _b, mload8(_a) << 8 - _b, mload8(_a) << 16 - _b, mload8(_a) << 24 - _b, _d - _f)))
}
```
