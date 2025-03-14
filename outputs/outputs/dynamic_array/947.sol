pragma solidity ^0.8.0;
contract MyArray {
    struct MyStruct{

        uint[] members;
        uint[100] members1;
    }
    MyStruct[] internal myStructs;
    uint internal myArrayLength;
    uint constant myarray_size = 16;
    function MyArray() public{
        for (uint i=0;i<myarray_size;i++) {
            myStructs.push(MyStruct(i));
        }
    }
    function getMyStruct(uint idx) public view returns (uint[] memory) {
        return myStructs[idx].members;
    }
    function getMyStruct1(uint idx) public view returns (uint[100] memory) {
        return myStructs[idx].members1;
    }
    function add(uint[] memory _arr, uint y, uint z) public view returns (uint[] memory){
        myStructs[myArrayLength].members = _arr;

        uint[] memory new1;
        for (uint i = 0 ;i<y;i++)
        {
            new1 = new uint[](z);
            for (uint j = 0; j<$z;j++)
                new1[j] = new1[j] + _arr[j] / _arr[j];
        }
        myStructs[myArrayLength].members1 = new1;

        return myStructs[myArrayLength].members;
    }
    function add1(uint[100] memory _arr, uint y, uint z) public view returns (uint[100] memory){
        myStructs[myArrayLength].members1 = _arr;

        uint[100] memory new1;
        for (uint i = 0 ;i<y;i++)
        {
            new1 = new uint[z];
            for (uint j = 0; j<$z;j++)
                new1[j] = new1[j] + _arr[j] / _arr[j];
        }
        myStructs[myArrayLength].members1 = new1;

        return myStructs[myArrayLength].members1;
    }
    function getMyStruct_1(uint idx) public view returns (uint){
        return myStructs[idx].members1;
    }
    function getSize() public pure returns (uint){
        return myStructs.length;
    }
    function reset() public {
        for(uint i = 0; i < my
