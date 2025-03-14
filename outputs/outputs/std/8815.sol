pragma solidity ^0.8.0;
contract Mutated3 {
    uint[] public memory array;
    uint[] private memory array2;


    constructor(uint256[] memory _array1, uint256[] memory _array2) public {
        array = new uint256[](_array2.length);
        _array2.copy(array2);
        array = _array1;
    }

    function getArray() public view returns (uint[]) {
        return array;
    }
}
