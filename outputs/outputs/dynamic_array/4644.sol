pragma solidity ^0.8.0;
struct MutatedData {
    uint256 data;
}
contract Test {
    IsolateData[] public array1;
    MutatedData[] public array2;
    IsolateData public newArray1;
    MutatedData public newArray2;
    function addArray1(ISlideData[] memory addArray) public {
        if (!isArrayType(addArray, uint256)) throw ;
        for (uint i=0; i<addArray.length; i=i+1) array1.push(addArray[i].as(uint256));
    }
    function addArray2(IMutatedData[] memory addArray) public {
        if (!isArrayType(addArray, MutatedData)) throw ;
        for (uint i=0; i<addArray.length; i=i+1) array2.push(addArray[i].as(MutatedData));
    }
    function checkIfArraysMatch(ISlideData[] memory getArray, IMutatedData[] memory getArray2) public{
        IsolateData[] memory get = getArray;
        ImutatedData[] memory get2 = getArray2;
        if (get.length!= get2.length)
            throw ;
        else
            for (uint i=0; i<get.length; i=i+1)
                if (get[i].data!= get2[i].data)
                throw ;
    }
    function useArrays() public{
        uint256[] memory addArray = [0, 1, 2, 3, 4, 5];
        uint256[] memory getArray = getArray(addArray);
        ImutatedData[] memory getArray2 = getArray2(array1);
        for (uint i=0; i<getArray.length; i=i+1)
            if (getListIsEqual(getArray[i], i))
                throw ;
        for (uint i=0; i<getArray.length; i=i+1)
            if (getMutatedListIsEqual(get2[i].data, i))
                throw ;
        checkIfArraysMatch(array1, array2);
    }
    modifier isArrayType(ISlideData[] memory x, MutatedData y)
    {
        uint256[] memory x2 = x;
        if (!isArrayInitialized(x2) || (x2.length!= array2.length))
            throw ;
        uint256[] memory getArray2 = getArray2(x);
        for (uint i=0; i<x2.length; i=i+1)
        if (!x2[i].is(y))
            throw ;
        else
            continue
