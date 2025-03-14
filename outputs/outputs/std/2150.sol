pragma solidity ^0.8.0;
contract Mutated_5_1 {
    uint[] myArray;
    bytes[][] myByteArray;
    bytes[1] myBytes;
    uint[1] myUint;
    function setArray(uint i, uint value) public {
        myArray[i] = value;
    }
    function setByteArray(uint i, bytes memory b) public {
        myByteArray[i] = new bytes[](1);
        myByteArray[i][0]= b;
    }
    function setBytes1(uint i) public {
        myBytes = new bytes[](1);
        myBytes[i] = bytes1("Test");
    }
    function setUint1(uint i) public {
        myUint = new uint[](1);
        myUint[i] = 1;
    }

    function maxArray_0() public {
        bytes memory b1;
        bytes memory b2;
        b1 = myBytes;
        b2 = myBytes;
        uint min = math.max(1, b1.length);
        uint max = math.min(1, b2.length);
        uint out = math.max(b1[min], b2[max]);
        uint minMax = math.min(min, max);
        if( minMax > 0 ){
            myArray[0] = out;
        }

        if( b1[myUint[minMax]]!= myBytes[myUint[minMax]]] ){ return; }
        if( b1[0]!= myBytes[0] ){ return; }
        if( (min!= max) && (out!= myArray[minMax])){ return; }
    }
    function minMaxArray_1() public {
        bytes memory b1;
        bytes memory b2;
        b1 = myBytes;
        b2 = myBytes;
        uint min = math.max(1, b1.length);
        uint max = math.min(1, b2.length);
        uint out = math.max(b1[min], b2[max]);
        uint minMax = math.min(min, max);

        if( b1[myUint[minMax]]!= myBytes[myUint[minMax]] ){ return; }
        if( b1[0]!= myBytes[0] ){ return; }
        if( (min!= max) && (out!= myArray[minMax])){ return; }
    }
    function minMaxByteArray_2() public {
        bytes memory b1;
        bytes memory b2;
        b1 = myBytes;
        b2 = myBytes;
        uint min = math.max(1, b1.length);
        uint max = math.min(1, b2.length);
        uint out = math.max(b1[min], b2[max]);
        uint minMax = math.min(min, max);
        myByteArray[0] = new bytes[](1);
        myByteArray[0][0]= bytes1(bytes2{out: out
