pragma solidity ^0.8.0;
contract Main2 {
    mapping(address => uint[] public arrayToFixSize);
    function modifyBlackboxes (uint[] memory array, uint offset, uint newLength) public {
        for (uint i = 0; i < newLength; i++) {
            arrayToFixSize[msg.sender][i] = array[i];
        }
    }
}
