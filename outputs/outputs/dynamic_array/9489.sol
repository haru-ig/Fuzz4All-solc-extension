pragma solidity ^0.8.0;
contract Main {
    uint constant x = 847;
    uint constant y = 1148;
    uint constant z = 8789;
    mapping (string => bytes) public storageWithDynamicArrays;
    mapping (string => bytes) public storageWithInvariants;
    mapping (string => bytes) public storageAsBytes;
    mapping (string => uint) public mappingWithDynamicArrays;
    mapping (string => uint) public mappingWithInvariants;
    mapping (string => uint) public storageAsInts;
    function f() public {
        uint[] memory arr = new uint[](1);
        assert (arr[1] == x );
        uint newarr[] = new uint[](2);
        newarr[0] = x;
        arr = newarr;
        assert (arr[1] == x);
        storageWithDynamicArrays[string( "dynamic arrays" )] = abi.encode( arr );
        assert(storageWithDynamicArrays[string( "dynamic arrays" )] == abi.encode(arr));
        uint[] memory newarr1 = new uint[](1);
        newarr1[0] = z;
        storageWithDynamicArrays[string( "dynamic arrays + zeroed values" )] = abi.encode( newarr1 );
        uint[] memory newarr2 = new uint[](0);
        storageWithDynamicArrays[string( "dynamic arrays + zeroed out" )] = abi.encode( newarr2 );
        storageAsBytes[string( "bytes with dynamic array" )] = abi.encode( z );
        uint[] memory arrAsAStorageWithDynamicArrays = new uint[](1);
        uint[] memory arrAsAStoreWithDynamicArrays = new uint[](2);
        arrAsAStoreWithDynamicArrays[0] = x;
        arrAsAStoreWithDynamicArrays[1] = y;
        mappingWithDynamicArrays[string( "dynamic array mapping" )] = arrAsAStoreWithDynamicArrays;
        uint[] memory newarr3 = new uint[](0);
        mappingWithDynamicArrays[string( "dynamic array + zeroed out" )] = newarr3;
        mappingWithDynamicArrays[string( "dynamic array + zeroed values" )]
