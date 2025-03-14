pragma solidity ^0.8.0;
contract Caller {
    function callWithoutFallback() public pure {
        assembly {
            let x
            let n
            mstore(add(x, 0x40), 0x20)
            mstore(add(n, 0x40), 0x20)
        }
    }
    function callWithFallback() public pure {
        assembly {
            let x
            let n
            mstore(add(x, 0x40), 0x60)
            mstore(add(n, 0x40), 0x20)
        }
    }
}
