pragma solidity ^0.8.0;
contract Array{
    function size(uint[] memory) public pure returns (uint){
        return uint(memory.length);
    }
    function size(int[] memory) public pure returns (uint){
        return uint(memory.length);
    }
    function size(uint256[] memory) public pure returns (uint){
        return uint(memory.length);
    }
    function at(uint[] memory array, uint index) public view returns (uint){
        if(index < size(array)) return array[index];
        return 0;
    }
}
