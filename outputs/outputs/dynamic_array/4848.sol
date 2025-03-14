pragma solidity ^0.8.0;
contract Test {
    uint32[6] memoryArray;
    function Array_1() public {
        Array_2();
        Array_2();
    }
    function MutatedArray_1() public {
        memoryArray[0]=memoryArray[0];
        memoryArray[2]=memoryArray[1];


        memoryArray[1]=memoryArray[3];
        memoryArray[3]=memoryArray[2];
    }
    function Array_2() public {
        Array32 mem = memoryArray;
        Array32[] mem_array = new Array32[](2);
        mem_array[0] = mem;
        mem_array[1] = mem;
        Array32 mem2=mem_array[0];
        Array32 memoryArray2 = mem2+1;
        Array32 memoryArray21 = memArray2+1;
        Array32 memoryArray22 = memArray22+1;
        Array32 memoryArray23 = memArray23+1;
        Array32 memoryArray24 = memArray24+1;
        Array32 memoryArray25 = memArray25+1;
        Array32 memoryArray26 = memArray26+1;
        Array32 memoryArray27 = memArray27+1;
        Array32 memoryArray28 = memArray28+1;
        Array32 memoryArray29 = memArray29+1;
        Array32 memoryArray30 = memArray30+1;
        Array32 memoryArray31 = memArray31+1;
        Array32 memoryArray32 = memArray32+1;
        Array32 memoryArray33 = memArray33+1;
        Array32 memoryArray34 = memArray34+1;
        Array32 memoryArray35 = memArray35+1;
        Array32 memoryArray36 = memArray36+1;
    }
}
```
## 6. Lets discuss the contracts
The contracts you will create are shown below and the function calls to them are below.
