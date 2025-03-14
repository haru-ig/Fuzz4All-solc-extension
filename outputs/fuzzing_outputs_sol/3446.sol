pragma solidity ^0.8.0;
contract MutatedCaller2 {
    function sendWithoutFallback() public payable {
        mut x
        x = 0
        assembly {
            let y := mload(0x40)
            mstore(0x40, x)
        }
        uint8 z = x;
    }

    function sendWithFallback() public payable {
        mut x
        x = 0
        assembly {
            let y := mload(0x40)
            mstore(0x40, add(x, 0x40))
        }
        uint8 z = x + 1;
    }
}
