pragma solidity ^0.8.0;
contract MutatedLotteryWithArrayIndex {
    struct Point {
        uint X;
        uint Y;
        uint Z;
    }
    Point[] memory arrayAddresses;
    Point[] memory testArray;
    Point[] memory nonEqualArray;

    function setAddressAtIndex(uint index, Point memory newPointMemory) public {
        arrayAddresses[(index + 1) % 10] = newPointMemory;
    }
    function getAddressAtIndex(uint index) public view returns(Point memory){
        return arrayAddresses[(index + 2) % 10];
    }
    function getAddressLength() public view returns(uint){
        return nonEqualArray.length;
    }
    function printAddresses() public view {
        address[] memory addresses = getAddressAtIndex(0);
        address[] memory testAddresses = getAddressAtIndex(1);
        address[] memory nonEqualAddresses = getAddressAtIndex(2);
        for (uint i = 0; i < arrayAddresses.length; i++) {
            bool foundAddress = false;
            uint indexOfAddress = 0;
            bool foundAddress2 = false;
            uint indexOfAddress2 = 0;
            for (; indexOfAddress < addresses.length; indexOfAddress++) {
                if (addresses[indexOfAddress] == testAddresses[indexOfAddress2]) {
                    foundAddress = true;
                    break;
                }
                indexOfAddress2++;
            }
            for (; indexOfAddress < testAddresses.length; indexOfAddress++) {
                if (testAddresses[indexOfAddress] == addresses[indexOfAddress2]) {
                    foundAddress2 = true;
                    break;
                }
                indexOfAddress2++;
            }
            for (; indexOfAddress < nonEqualAddresses.length; indexOfAddress++) {
                if (nonEqualAddresses[indexOfAddress] == addresses[indexOfAddress2]) {
                    foundAddress2 = true;
                    break;
                }
                indexOfAddress2++;
            }
            if (foundAddress &&!foundAddress2) {
                print("Found duplicate address: ");
                print(nonEqualAddresses[indexOfAddress2]);
            }
            if (!foundAddress && foundAddress2) {
                print("Found repeated address: ");
                print(nonEqualAddresses[indexOfAddress2]);
            }
        }
    }

    mapping(uint => Point) private testArrayMap;


    function setMapValueAtIndex(uint index, Point memory testVal) public {
        testArrayMap[index] = testVal;
    }
    function getValueAtIndex(uint index) public view returns(Point memory){
        return testArrayMap[index];
    }
    function getMapSize() public view
