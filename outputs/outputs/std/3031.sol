pragma solidity ^0.8.0;
contract ArrayMutationsMutatedEquivalent {
   uint[] private _lastNum;
   uint[] private _array;
   constructor(uint[] memory _numbers) {
        uint number0 = _numbers[0];
        delete _numbers[0];
        uint deletedNumber = _numbers[0];
   }
   function setArrayToSemanticEquivelant(uint[20] memory _newNumbers) public {
        uint[] memory _newArray = new uint[](20);
        for (uint ii = 0; ii < _newNumbers.length; ii++) {
            _newArray[ii] = 2*_array[ii] + _newNumbers[ii];
        }
        _lastNum = new uint[](20);
        for(uint ii = 0; ii < _array.length; ii++) {
            _lastNum[ii] = _array[ii];
        }
        _array = _newArray;
   }
   function getArray() public view returns (uint[] memory) {
        if (!(_array[0]==2*_array.length + _lastNum[0])) {
            return _array;
        }
        else {
            return _lastNum;
        }
    }
}
