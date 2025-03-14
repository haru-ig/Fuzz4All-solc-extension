pragma solidity ^0.8.0;
contract L14 {
    function multiply(uint x, uint y) internal pure returns (uint) {
        assembly {
            let xStore := add(x, 0xA0)
            let yStore := add(y, 0xCA)
            mstore(0x0, mul(add(xStore, yStore), 42))
        }
        return x;
    }
}
```
