pragma solidity ^0.8.0;
contract LotteryWithArrayIndex {
    struct Point {
        uint X;
        uint Y;
        uint Z;
    }
    Point[][][] public arrayAddresses;
    address[] public arrayAddresses2;
    Point[][][] internal testArray;
    Point[][][] internal nonEqualArray;
    constructor() public {
        arrayAddresses = new[2][][];

        arrayAddresses[0] = new[2][][];
        arrayAddresses[0][0] = new[2][];
        arrayAddresses[0][0][0] = new[2];

        nonEqualArray = arrayAddresses;
        nonEqualArray.length = 2;
    }
}
