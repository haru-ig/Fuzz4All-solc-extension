pragma solidity ^0.8.0;
contract SemanticallyEquivalenty4 {
    constructor () public {
        assembly {
            let a := mload(120)
            let a := mload(memory + 120)
            let a := a > 100? 100 : a;
            let a := 0 < a? a : 0;
            let a := a >> 0 ^ (-1 << 0) >>> 0 >>> 0 >>> 0 >>> 0 >>> 0 >>> 0 >>> 0;
            let a: uint8 = a > 100? 100 : a;
            let a: uint256 = 0 < a? a : 0;
            let a: uint256 = a >> 0 ^ (-1 << 0) >>> 0 >>> 0 >>> 0 >>> 0 >>> 0 >>> 0 >>> 0;
        }
    }
}
