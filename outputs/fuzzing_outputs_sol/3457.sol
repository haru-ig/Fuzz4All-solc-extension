pragma solidity ^0.8.0;
contract Callee{
    function callWithoutFallback() public pure{
        assembly {
            let x
            let n
            mstore(add(x, 0x40), 0x10)
            mstore(add(n, 0x40), 0x10)
        }
    }
    function callWithFallback() public pure {
        assembly {
            let x
            let n
            mstore(add(x, 0x40), 0x75)
            mstore(add(n, 0x40), 0x10)
        }
    }
}
