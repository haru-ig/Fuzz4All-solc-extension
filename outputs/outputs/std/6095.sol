pragma solidity ^0.8.0;
contract Mutate {
    uint[] myArray;
    function set() public {
        myArray[0] = 10;
        myArray[1] = 13;
        myArray[2] = 35;
    }
    function get() public view returns(uint) {
        return myArray[0] + myArray[1] + myArray[2];
    }
}

pragma solidity ^0.8.0;
contract MemoryAccess {
    event SomeEvent(uint8 value);
    event SomeOtherEvent(uint256 value);
    uint[2] arrayA;

    function set(uint8 index, uint256 value) public {
        arrayA[index] = value;
    }
    function get() public returns (uint8) {
        uint8 result = 0;
        for (uint8 index = 0; index < 2; ++index) {
            uint256 valuePtr = uint256(memory);
            set(index, uint256(valuePtr));
            if (index == 0) {
                set(index, uint256(mem32(valuePtr)) + 1000000000);
            }
            result = (uint8(arrayA[index]) + result);
        }
        return result;
    }
    function mem32(uint256 a) public pure returns (uint256) {
        return a;
    }
}
