pragma solidity ^0.8.0;
contract SimpleCaller {
    function call() public payable payable {
        assembly {
            let x
            let n
            mstore(x, 0x00)
            mstore(n, 0x14)
            let z = calldatacopy(0, x, 32)

            let b = mload(add(x, z))

            let a
            let c

            mstore(a, b)
            mstore(c, n)
            mstore(add(x, 32), z - 32)

            let f
            let e

            f := and(b, 255)
            e := div(b, 255)

            let d
            let c

            mstore(add(x, 96), 0x00)
            mstore(add(a, 0x40), 0x0f)
            mstore(add(c, 0x40), 0x0b)
            mstore(add(add(add(a, 0x40), 0x40), 0x40), f)
            mstore(add(add(add(c, 0x40), 0x40), 0x40), e)
            mstore(add(add(e, 0x40), 0x40), zero)

            let g
            let d

            g := and(c, 255)
            d := div(c, 255)

            let h
            let e

            mstore(add(c, 96), 0x00)
            mstore(add(a, 0x40), 0x0c)
            mstore(add(c, 0x4
