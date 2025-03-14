pragma solidity ^0.8.0;
contract MutatedCallerExample {
    function sendWithoutFallback() public pure {
        bytes memory data1 = abi.encodePacked(address(new MutatedCaller()).balance);
        bytes memory data2 = abi.encodeWithSignature("fallback()");
        assembly {
            let p := mload(0x40)
            pop(0x15)
            mstore(add(p, 0x40), 0x15)
        }
        assembly {
            let p := add(add(add(p, 0x20), 0x20), 0x20)
            pop(0x0)
            push(data1)
            push(data2)
            mstore(p, 0x0)
        }
    }
    function sendWithFallback() public pure {
        bytes memory data1 = abi.encodePacked(address(new MutatedCaller()).balance);
        bytes memory data2 = abi.encodeWithSignature("fallback()");
        assembly {
            let p := mload(0x40)
            pop(0x15)
            mstore(add(p, 0x40), 0x15)
        }
        assembly {
            let p := add(add(add(p, 0x20), 0x20), 0x20)
            pop(0x0)
            push(data1)
            push(data2)
            mstore(p, 0x0)
        }
    }
}
