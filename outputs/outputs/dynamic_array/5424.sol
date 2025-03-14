pragma solidity ^0.8.0;
contract Test38 {
    struct T1 {
        uint a;
        uint[3] i;
    }

    function mutated8() public {
        T1 memory a = T1(2, [3, 4, 5]);
        a.i[2] = 1;
        delete a.i;
        emit logEvent(a.a);
    }

    event logEvent(uint a);
    function logEvent(uint a) public {
        emit logEvent(a);
    }


}
library DynamicLibrary {

    address public owner;
    function dynamicArray(uint length) internal returns (uint[] memory _array) {
        _array = new uint[](length);
        uint n = 0;
        while (n < length)
        {
            _array[n] = n;
            n++;
        }
    }
    function addValue(uint[] memory _array, uint index, uint value) internal {
        _array[index] += value;
    }
}

pragma solidity ^0.8.0;
contract Test39 {
    uint[] memory a;
    function mutated9() public {
        a = DynamicLibrary.dynamicArray(5);
        for (uint i = 3; i < a.length; ++i)
        {
            addValue(a, i, 4);
        }
        emit logEvent(a.length);
    }
    event logEvent(uint length);
    function findLast(uint a, uint b) internal pure returns (uint c)
    {
        uint[42] memory array = new uint[](42);
        uint i = 0;
        while (i < array.length)
        {
            array[i] = i;
            i++;
        }
        uint i2 = array.length - 1;
        c = i2;
    }
    function findLast2(uint a) internal returns (uint b)
    {
        uint[42] memory array = new uint[](42);
        uint i = 0;
        while (i < array.length)
        {
            array[i] = i;
            i++;
        }
        uint i2 = array.length - 2;
        b = array[i2];
    }
    function test() public {
        uint[] memory a = dynamicArray(5);
        for (uint i = 0; i < 5; ++i)
        {
            addValue(a, i, 5);
        }
        emit logEvent(findLast2(findLast(1, 2)));

    }
    uint[] memory
