pragma solidity ^0.8.0;
contract Convert {
    function uintToByteArray(uint val) public pure returns (bytes memory) {
        bytes memory buff = new bytes(32);
        assembly {
            mstore(add(buff, 32), val)
        }
        return buff;
    }
    function byteToUInt(bytes calldata b) public pure returns (uint) {
        if (b.length!= 32)
            revert("Length wrong");
            assembly {
                let buff := mload(add(b, 32))
                mstore(add(b, 32), 0)
                mstore(add(b, 16), add(buff, sub(0, 1)))
                mstore(add(b, 24), add(buff, sub(0, 2)))
            }
        return getUInt(b);
    }
    function bytes8ToUInt(bytes8 b) public pure returns (uint) {
        if (b.length!= 64)
            revert("Length wrong");
        assembly {
            let buff := mload(add(b, 64))
            mstore(add(b, 64), 0)
            mstore(add(b, 32), add(buff, sub(0, 1)))
            mstore(add(b, 40), add(buff, sub(0, 2)))
            mstore(add(b, 48), add(buff, sub(0, 3)))
            mstore(add(b, 56), add(buff, sub(0, 4)))
            mstore(add(b, 64), add(buff, sub(0, 5)))
            mstore(add(b, 72), add(buff, sub(0, 6)))
            mstore(add(b, 80), add(buff, sub(0, 7)))
        }
    }
    function get
