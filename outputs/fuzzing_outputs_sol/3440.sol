pragma solidity ^0.8.0;
contract NonMutatedCaller {
    function sendWithoutFallback() public payable {
        assembly {
            let x := mload(0x40)
            pop(0x14)
            mstore(x, 0x14)
        }
    }
    function sendWithFallback() public payable {
        assembly {
            let x
            let n
            mstore(add(x, 0x40), 0x14)
            mstore(add(n, 0x40), 0x14)
            mstore(0x40, 0x0)
        }
    }
}
