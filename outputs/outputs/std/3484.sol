pragma solidity ^0.8.0;
contract ArrayModifications {

    uint[] memory arr1;
    uint[] memory arr2;
    function set(uint[] memory _arr1, uint[] memory _arr2) public {
        arr1 = _arr1;
        arr2 = _arr2;
    }
    function add(uint[] memory _arr1, uint[] memory _arr2) public {
        uint _arr1Length = _arr1.length;
        uint _arr2Length = _arr2.length;
        uint size;
        if(arr1.length >= arr2.length) {
            size = _arr1Length;
        } else {
            size = _arr2Length;
        }
        for(uint i = 0; i < size; i++) {
            arr1[i] += _arr2[i];
            arr2[i] += _arr1[i];
        }
    }
    function mod(uint[] memory _arr1, uint[] memory _arr2) public {
        uint _arr1Length = _arr1.length;
        uint _arr2Length = _arr2.length;
        uint size;
        if(arr1.length >= _arr2Length) {
            size = _arr2Length;
        } else {
            size = _arr1Length;
        }
        for(uint i = 0; i < size; i++) {
            arr1[i] = arr1[i] % _arr2[i];
            arr2[i] = arr2[i] % _arr1[i];
        }
    }
}
