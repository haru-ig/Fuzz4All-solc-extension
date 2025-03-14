pragma solidity ^0.8.0;
contract MutateWithStringAndBool {
    mapping(uint => uint) private _array;
    function createArray() public {
        for(uint256 i = 0; i < 3; i++){
            _array[i] = 4000;
        }
    }
    function findValueByBool(uint256 x) public view returns (uint256){
        return x!= 0;
    }
    function findValueByString(uint256 x) public view returns (uint256){
        if(x!= 0){
            return x;
        }

        return findValueByBool(x);
    }
    function modifyArray() public {
        for(uint256 i = 0; i < 3; i++){
            _array[i] = _array[i] + 600;
        }
    }
}
