pragma solidity ^0.8.0;
contract DynamicArrayExample {
    uint256[30] internal constant arrayForIndexing = [30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1];
    uint256[30] internal constant arrayForIndexing2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30];

    uint256[3] dynamic arrayForDynamic = [0, uint256(arrayForIndexing), uint256(arrayForIndexing2)];
    uint256[3] dynamic arrayForDynamic2 = [uint256(arrayForIndexing2), 0, uint256(arrayForIndexing)];






    function() public payable {
        _uintArray[1] = 1;
        _uintArray[0] = 1;
    }

    function _fail(uint256 size) public {
        arrayForIndexing2 = new uint256[](size + 1);
        for (uint256 i = 0; i <= size; i++) {
            arrayForIndexing2[i] = i;
        }
    }

    function _empty() public {
    }

    function _assignOne() public {
        _uintArray[0] = 1;
    }

    function _assignMany() public {
        _uintArray = arrayForDynamic + arrayForDynamic2;
