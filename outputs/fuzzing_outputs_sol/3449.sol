pragma solidity ^0.8.0;
contract MutatedCaller {
    function sendWithoutFallback() public payable {
        assembly {
            let x
            let n
            mstore(add(x, 0x40), 0x20)
            mstore(add(n, 0x40), 0x14)
        }
    }
    function sendWithFallback() public payable {
        assembly {
            let x
            let n
            mstore(add(x, 0x40), 0x0)
            mstore(add(n, 0x40), 0x14)
        }
    }
}
