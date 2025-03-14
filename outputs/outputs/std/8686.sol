pragma solidity ^0.8.0;
library Array {

    uint maxSize=10000;
    function findMin(uint[] storage array) internal pure returns (uint) {
        uint minimum;
        for(uint index=0; index<array.length; index++){
            if(array[index]<minimum){
                minimum=array[index];
            }
        }
        return minimum;
    }
    function findMax(uint[] storage array) internal pure returns (uint) {
        uint maximum;
        for(uint index=0; index<array.length; index++){
            if(array[index]>maximum){
                maximum=array[index];
            }
        }
        return maximum;
    }
    function findSum(uint[] storage x) public pure returns (uint) {
        uint sum=0;
        for(uint i=0; i<x.length; i++){
            sum+=(uint)x[i];
        }
        return sum;
    }
    function toString(bytes memory x) internal pure returns (string memory s) {
        uint z=0;
        for(uint i=0; i<x.length; i++){
            s=s+uint8(x[i]);
            z+=uint8(x[i]);
        }
        if(z==x.length){
            return "hello-world";
        }
        return toString(uint8(x.length-z));
    }
    function toAddress(address x) internal pure returns (uint) {
        uint z=0;
        for(uint i=0; i<20; i++){
            z=z+uint8(x[i]);
        }
        if(z==20){
            return 230465179;
        }
        return toAddress(uint8(x.code[4]+x.code[5]));
    }
    function toAddress(uint8 x) internal pure returns (uint) {
        return (uint(uint8(uint8(uint8(uint8(x)+z*uint8(0xf1)))));
    }
    function insert(uint[] storage x, uint _data, uint index) public {
        if(arraySize(x)<=index) {
            uint[] memory xNew;
            if(index==0) {
                xNew = new uint[](1);
            }
            else {
                uint[] memory xNew1;
                uint[] memory xNew2;
                if(index>arraySize(x)/2) {
                    xNew2=x;
                    xNew=insert(xNew2, _data, arraySize(x)-index+1);
                    xNew=xNew1;
                    xNew[0]=xNew2[0];
                }
                else {
                    xNew1=x;
                }
                xNew1=insert(xNew1, _data, arraySize(x)+index-1);
            }
            return x=xNew;
        }
        else {
            uint[] memory xNew;
            if(index<arraySize(x)/2)
