pragma solidity ^0.8.0;
contract ModifiedEquivalentDynamicArrayAssignment2{
    function modulate(uint[] memory _uintArray){
       _uintArray[66] = 1;
    }
    function changeArrayMaximum(uint _newMax) external {
       _max = _newMax;
    }
}
