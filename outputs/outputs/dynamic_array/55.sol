pragma solidity ^0.8.0;
contract B {
    uint256[] public bArray;
    uint256[] public bArray2;
    uint256[] public bArray3;
    uint256[] public bArray4;
    uint256[] public bArray5;
    uint256[] public bArray6;
    uint256[] public bArray7;
    uint256[] public bArray8;
    uint256[] public bArray9;
    uint256[] public bArray10;
    uint256[] public bArray11;
    uint256[] public bArray12;
    uint256[] public bArray13;
    uint256[] public bArray14;
    uint256[] public bArray15;
    uint256[] public bArray16;
    function set() public {
        bArray2 = new uint256[](bArray.length+2);
        assert(bArray.length==256);
        bArray3 = new uint256[](bArray[0]);
        bArray6 = new uint256[](bArray3.length+2);
        assert(bArray3.length==7);
        bArray7 = bArray.concat(bArray2);
        assert(bArray.length==128);
        bArray4 = bArray3.concat(bArray6);
        assert(bArray3.length==15);
        uint256[] memory arr1 = new uint256[](bArray4.length+2);
        arr1.length = 16;
        bArray = arr1;
        assert(bArray4.length==25);
        bArray[2] = 3;
        uint256[] memory arr4 = new uint256[](bArray
