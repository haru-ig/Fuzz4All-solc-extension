pragma solidity ^0.8.0;

library ArrayUtils {
    function array_set_slice(uint256[] storage a, uint32 idx, uint256 value)
        internal
    {
        require(idx >= 0 && idx < a.length);
        uint256 lastSlot = a.length - 1;
        a[idx] = value;
        cascadable(lastSlot - idx + 1, a.length);
    }

    function array_set(uint256[] storage a, uint32 idx, uint256 value)
        internal
    {
        require(idx >= 0 && idx < a.length);
        a[idx] = value;
    }

    function array_add(uint256[] storage a, uint256 value)
        internal
        returns (uint32 idx)
    {
        uint256 length = a.length;
        a.length++;
        a[length] = value;
        cascadable(length, length + 1);
        return uint32(length);
    }

    function cascadable(uint256 length, uint256 lengthMinus1) internal pure {}
}

contract C6 {
    constructor(uint256 x) {
        ArrayUtils.array_set(
            this.state.array,
            0,
            C6(x.sub(1)).add(x)
        );
    }

    struct State {
        uint256[] array;
    }
    State internal state = State({
        array: [1]
    });

    function add(uint256 a, uint256 b) public pure returns (uint256) {
        uint256[] storage myArray;
        assembly {
            myArray := mload(0x40)
        }
        ArrayUtils.array_set_slice(myArray, 0, a);
        ArrayUtils.array_set_slice(myArray, 1, b);
        ArrayUtils.array_set(myArray, 2, a + b);
        return a + b;
    }
}
