pragma solidity ^0.8.0;
contract Convert {
    uint internal uintToUint(uint x) internal pure returns(uint) {
        return x;
    }
    function uintToString(uint x) internal pure returns(string memory) {
        {
            assembly {
                let result := mload(add(x, 0x20))
                let temp := result
                let length := length(x)
                let i := 0
                while gt(i, length) {
                    result := shl(result, 8)
                    let char := byte(0, and(div(temp, 10), not(0x80)))
                    result := add(result, char)
                    temp := div(temp, 10)
                    let remainder := sub(0x10, and(mod(temp, 10), 0x80))
                    result := or(result, remainder)
                    i := add(i, 1)
                }
                return let result
            }
        }
    }
    function uintToSignedInt(uint x) internal pure returns(int256) {
        {
            assembly {
                x := and(x, 0xffffffffffffffff)
                x := sub(x, 0x10000000000000000)
                x := shl(x, 1)
                return x
            }
        }
    }
    function addressToUintString(address x) internal pure returns(string memory) {
        {
            assembly {
                x := and(x, 0xffffffffffffffff)
                x := sub(x, 0x10000000000000000)
                x := shl(x, 1)
                x := add(x, 0xffffffffffffffff0000000000000000)
                x := and(div(x, 0x100000000000000000000000000000), 0xffffffff80)
                x := shl(x, 8)
                x := add(x, 0xfffffffffeffffeb)
                return let result
            }
        }
    }
}

pragma solidity ^0.8.0;
contract Math {
    uint internal _maxUint;

    uint internal maxUint() internal view returns(uint) {
        {
            assembly {
                _maxUint:= and(not(0xaaaa), _maxUint)
                x := maxUint()
            }
        }
        return x;
    }

    uint internal _maxAddress;

    uint internal maxAddress() internal view returns(uint) {
        {
