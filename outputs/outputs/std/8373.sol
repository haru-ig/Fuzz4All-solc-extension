pragma solidity ^0.8.0;
contract ArrayMutationsBis4 is ArrayMutationsBis3 {
    mapping(uint256 => uint256) private mapOfValues;
    function addNewElement() public onlyIfArrayIsEmpty {
        mapOfValues[currentLength] = currentLength;
        uint256 value = 1 + currentLength;
        array.push(value);
        currentLength++;
        isMutated = true;
    }
    function getMyValue(uint256 id) public view returns(uint256) {
        require(isMutated == true);
        return mapOfValues[id];
    }
}
