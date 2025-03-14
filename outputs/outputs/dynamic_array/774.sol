pragma solidity ^0.8.0;
library Test{
    struct MyStruct{
        uint x;
        uint y;
    }
    struct MyNestedStruct{
        uint z;
    }

    MyStruct[] public array0;
    MyNestedStruct[] public my_struct_array;
    uint[] public numeric_array;
    bool public boolean_array;

    function assign_and_delete() public returns(uint _number){
        array0.push(MyStruct(42,23));
        array0[0].x = 0;
        numeric_array = new uint[](3);
        numeric_array.push(8);
        numeric_array.push(5);
        numeric_array[2] = 12;
        numeric_array[0] = 4;
        boolean_array = false;
        my_struct_array.push(MyNestedStruct(array0.length));
        my_struct_array[array0.length].z = 0;
        my_struct_array[array0.length].x = 4;
        my_struct_array[array0.length].y = 8;
    }
}
