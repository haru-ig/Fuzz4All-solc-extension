pragma solidity ^0.8.0;
contract Array {
    uint[] arrayOfUints;
    uint[] arrayOfInts;
    string[] arrayOfStrings;


    function setArray(uint[] memory _arrayOfUints) public {arrayOfUints = _arrayOfUints;}
    function setArray(int[] memory _arrayOfInts) public {arrayOfInts = _arrayOfInts;}
    function setArray(string[] memory _arrayOfStrings) public {arrayOfStrings = _arrayOfStrings;}
    function getArray() public view returns (uint[]){return arrayOfUints;}
    function getArray() public view returns (int[]){return arrayOfInts;}
    function getArray() public view returns (string[]){return arrayOfStrings;}

    function getArrayReturnPointer() public view returns (uint memory) {return arrayOfUints;}
    function getArrayReturnPointer() public view returns (int memory) {return arrayOfInts;}
    function getArrayReturnPointer() public view returns (string memory) {return arrayOfStrings;}


    function deleteArray(uint _index) public {
        require(
            _index < arrayOfUints.length,
            "Cannot delete the last element."
        );
        delete arrayOfUints;
        delete arrayOfInts;
        delete arrayOfStrings;
    }
}
