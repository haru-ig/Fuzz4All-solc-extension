pragma solidity ^0.8.0;
contract M15 {
    uint _arr1;
}
contract M16 {
    uint _arr2;
}

contract ArrayM20 {
    uint[] _arr1;
    uint[] _arr2;
    constructor(uint[] memory arr1, uint[] memory arr2) {
        arr1;
        _arr1 = arr1;
        arr2;
        _arr2 = arr2;
        sum();
        diff();
        _;
    }
    function sum() public view returns(uint){
        return sum(arr1, arr2);
    }
    function diff() public view returns(uint){
        return diff(arr1, arr2);
    }
    function sum(uint[] memory arr1, uint[] memory arr2) public pure returns(uint){
        uint sum = 0;
        for (uint i=0; i<arr1.length; i++){
            sum += arr1[i];
            if (sum >= 10){
                return sum-10;
            }
        }
        return sum;
    }
    function diff(uint[] memory arr1, uint[] memory arr2) public pure returns(uint){
        uint diff = 0;
        for (uint i=0; i<arr1.length; i++){
            if (arr2[i] > arr1[i]){
                diff++;
            }
        }
        return diff;
    }
}
