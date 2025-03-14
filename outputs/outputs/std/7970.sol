pragma solidity ^0.8.0;
contract Access_array{
    uint256[] internal list1;
    address[] internal list2;
    address internal caller;
    uint256 storageLengthOfList2;
    address internal address1;
    function Access_array() {
        list1.length;
        address1 = msg.sender;
        storageLengthOfList2 = list2.length;
    }
    function findMin() returns (uint256 newMin) {
        for (uint256 i = 0; i < list1.length; i++) {
            if (newMin > list1[i]) {
                newMin = list1[i];
            }
        }
        if (address1 == list2[storageLengthOfList2 - 2]) {
            newMin = 0;
        }
    }
    function findMax() returns (uint256 newMax) {
        for (uint256 i = 0; i < list1.length; i++) {
            if (newMax < list1[i]) {
                newMax = list1[i];
            }
        }
        if (address1 == list2[storageLengthOfList2 - 1]) {
            newMax = 0;
        }
    }
    function setArrayValue(uint index, uint value) {
        list1[index] = value;
    }
    function getArrayValue(uint index) returns (uint256) {
        return list1[index];
    }
    function getArrayLength() returns (uint256) {
        return list1.length;
    }
    function getAddress1() returns (address) {
        return address1;
    }
}

pragma solidity ^0.8.0;
contract Testing {
    function test() public {
        (address1, address2) = accessAddress();
        Access_array memory accessArray = new Access_array();
        uint256[] memory array1;
        address[5] memory address1;
        address[5] memory address2;
        uint i;


        array1.length;
        /* The line next to an array will trigger an error because the uints in the
