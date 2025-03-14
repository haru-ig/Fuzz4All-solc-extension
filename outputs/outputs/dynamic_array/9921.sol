pragma solidity ^0.8.0;
contract SemanticTest_v4 {
    uint public myArray;
    uint public _mintAmount;
    uint[] memory array;
    constructor() public {
        uint [] storage array = new uint[](10);

        array[0] = 11;
        array[9] = 3;


        for (uint i = 0;i < 10;i++) {
            myArray -= 1;
        }
        _mintAmount = 3;
        for (uint i = 0; i < _mintAmount; i++) {
            array[_mintAmount + i + 1] = 112;
        }
    }
    function setMint(uint _mint) public {
        _mintAmount = _mint;
    }
    function setArray(uint[] memory _array) public {
        uint[] storage array = new uint[_array.length];
        uint[] memory arrayTemp = _array;
        for(uint i =0;i < arrayTemp.length;i++) {
            array[array.length + i] = arrayTemp[arrayTemp.length + i];
        }
        array[0] = 11;
        array += _array;
    }
}
