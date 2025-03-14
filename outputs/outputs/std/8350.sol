pragma solidity ^0.8.0;
contract ArrayMutations {
    uint256[] public immutable array;
    uint256[] private data;
    uint256 internalLength = 0;
    bool private flag = false;
    uint256 test;
    uint256 zero;
    uint256 constant private MIN_VALUE = 10;
    uint256 constant private MAX_VALUE = 10;

    function initialize(uint256[] memory initialElements) internal {
        flag = true;
        data = initialElements;

    }

    function setLength(uint256 newLength) public onlyIfArrayIsEmpty {
        flag = true;
        internalLength = newLength;
    }

    function pushBack(uint256 newElement) public {
        require(flag);
        data.push(newElement);
    }

    function pushFront(uint256 newElement) public onlyIfArrayIsEmpty {
        data.unshift();
        internalLength++;
    }

    function getLength() public view returns(uint256) {

        return internalLength;
    }


    function get(uint256 index) public view returns (uint256) {
        return data[index];
    }


    function getAddress(uint256 index) public view returns (address) {
        return address(data[index]);
    }


    function getAddressOfFirst() public view returns (address) {
        return address(data[0]);
    }


    function set(uint256 index, uint256 newValue) public onlyIfArrayIsEmpty {
        flag = true;
        data[index] = newValue;
    }


    function popBack() public {
        require(flag);
        currentLength--;
        data.pop();
    }


    function popFront() public onlyIfArrayIsEmpty {

        uint256 element = data[0];
        data.length = 0;
        internalLength--;
        require(flag);
        currentLength--;
        data.pop();
    }


    function getLengthWithoutPushBack() public view returns (uint256) {
        return internalLength - 1;
    }


    function getTotalAmount() public view returns (uint256) {
