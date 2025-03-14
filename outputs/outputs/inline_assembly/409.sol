pragma solidity ^0.8.0;
contract M11 {
    uint public b;
    mapping(uint => uint) public mapCount;
    mapping(address => uint[]) public mapAddress;
    mapping(uint => uint) public arrayCount;
    mapping(address => uint[]) public arrayAddress;
    function modify() public {
        b = 1;
        mapCount[1] = 1;
        mapCount[2] = 2;
        mapCount[3] = 4;
        mapCount[4] = 8;
        mapAddress[1] = [3];
        mapAddress[2] = [1,4];
        mapAddress[3] = [2,5];
        mapAddress[4] = [1,6];
        arrayCount[1] = 1;
        arrayCount[2] = 1;
        arrayCount[3] = 1;
        arrayCount[4] = 1;
        arrayAddress[1] = [2,3];
        arrayAddress[2] = [4];
        arrayAddress[3] = [5];
        arrayAddress[4] = [6,7];
        uint[] memory addresses = [];
        uint count = 1;
        for(uint i; i < 10; i++) {
            addresses.push(count);
            count = count + 1;
        }
    }
    function access() public view {
        for(uint i; i < 5; i++) {
            uint key = i;
            require(mapAddress[key].length > 0, "key does not exist");
            require(mapAddress[key][0] == 2, "key does not contain value.");
            require(mapCount[key] > 0, "key does not exist");
            require(mapCount[key] == mapAddress[key].length, "key incorrectly counts data");

            require(arrayAddress[key].length > 0, "key does not exist");
            require(arrayAddress[key][0] == 3, "key does not contain value.");
            require(arrayCount[key] > 0, "key does not exist");
            require(arrayCount[key] == arrayAddress[key].length, "key incorrectly counts data");
        }
    }
}
