pragma solidity ^0.8.0;
contract Caller {
    function sendWithoutFallback() public payable {
        assembly {
            let x
            let n
            mstore(add(x, 0x40), 0x14)
            mstore(add(n, 0x40), 0x14)
            mstore(0x40, 0x0)
        }
    }
    function sendWithFallback() public payable returns (address) {
        address x = address(address(this));
        assembly {
            sstore(x, address(0x40))
            sstore(add(x, 0x40), 0x14)
        }
        return x;
    }
}
