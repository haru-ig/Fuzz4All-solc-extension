pragma solidity ^0.8.0;
contract Test {
    mapping(uint => uint) public store;
    uint data;
    uint stored = data;
    function MutateData(uint newData, uint newData2) public {
        store[data] = newData;
        data = newData2 + newData;
        stored += newData2;
        require(stored > data, "FAILS1");
        require(data == 13, "FAILS2");
        store[3] = stored + 1;
    }
}
```

## Detailed Explanation
A function can have any number of parameters, and they can be named.

A dynamic calldata array can be initialized with values or in the form of a variable or a constructor argument value. Dynamic array sizes can be specified in different ways. The first way is to use 'var', for example: `uint[] memory memArray1 = new uint[](9)`, where '9' is the array size.

```solidity




contract Test {
    uint[] data = new uint[](9);

    function InitCalls () {
        data[data.length] = 9;
    }
}
```

```solidity

contract Test {
    uint[] memory memArray1 = new uint[](9);
    uint[] memory memArray2 = new uint[](9);

    function InitCalls () {
        memArray1[9] = 9;
        memArray2[9] = 16;
    }

    function MutateArrays () {
        memArray1[data.length] = data[data.length] + 9;
        memArray2[9] = 32;
        printf("data[data.length] = %u; value should be 18\n", data[data.length]);
    }
}
```

The second way is to specify size at the time when it is created `uint[] data = new uint[](dataSize[theDataSize])`.

```solidity

contract Test {
    uint[] data;
    uint size;
    function
