pragma solidity ^0.8.0;
contract MutatedCaller {
    function sendWithoutFallback() public payable {
        assembly {
            let x := mload(0x40)
            pop(0x14)
            mstore(add(x, 0x40), 0x14)


        }
    }
    receive () payable {}
    function sendWithFallback() public payable {
        address payable _contract = payable(1);
        assembly {
            let x
            let n
            mstore(add(x, 0x40), 0x14)
            mstore(add(n, 0x40), 0x14)
            mstore(0x40, 0x0)
            pop(0x20)
            pop(0x60)
            mstore(_contract, 0x40)
            mstore(_contract, 0)
        }
    }
}
