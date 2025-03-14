pragma solidity ^0.8.0;
library ArrayLibrary {
    function appendOneToArray (uint[] storage self, uint newElement) {
        self.push(newElement);
    }
    function getArrayLength (uint[] memory self) returns (uint) {
        return self.length;
    }
    function emptyArray(uint) public pure returns (uint[] memory) {
        return new uint[](0);
    }
    function nonEmptyArray(uint elements) public pure returns (uint[] memory) {
        return new uint[](elements);
    }
    function appendElementAndZero(uint[] storage self, uint newElement) {
        self.push(newElement);
        self.push(0);
    }
}
pragma solidity ^0.8.0;
contract NewArrayAssignment {
    uint public y;
    uint public z;




    uint[] public array1;
    uint[] public emptyArray;
    uint32 _internal_data;

    function NewArrayAssignment() {
        array1 = ArrayLibrary.nonEmptyArray<uint>(3);
    }

    constructor() {
        array1 = ArrayLibrary.nonEmptyArray<uint>(3);
        z = 25698;

        emptyArray[0] = 668;

    }

    modifier notEmptyAndNotFull() {
        require (_internal_data!= 7);
        _;
    }

    function appendAndPrepend (uint element) public notEmptyAndNotFull {
        array1.push(element);
        array1.unshift(element);


        y = z + 256;
    }

    function appendAndPush (uint element) public notEmptyAndNotFull {
        _internal_data++;
        y = z;
    }

    modifier test(uint a, uint b) {
        require (a==b);
        _;
    }

    bytes32 constant internalDataHash = 0xb24120295a424c4563c6150c2d1e3d3e655455f6;

    function appendData (uint element) public {
        appendAndPush(element);
        array1.push(element);
        assert(bytes32(element) == internalDataHash);
