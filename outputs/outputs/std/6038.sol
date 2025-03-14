pragma solidity ^0.8.0;
contract Memory {

    function length(uint[] memory memoryArray, uint[] memory) public pure returns(uint)
    {
        return memoryArray.length;
    }
}
