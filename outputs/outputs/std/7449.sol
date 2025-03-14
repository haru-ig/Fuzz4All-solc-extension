pragma solidity ^0.8.0;
contract Mutate {
    uint256[] previous;
    uint256[] memory result;
    constructor(uint256[] memory _previous)  {
        previous = _previous;
        result = [];
        for(uint j = previous.length - 1; j >= 0; j--) {
            result.push(previous[j]);
        }
    }
    function mutateFromFirst(uint256[] memory array) public view returns (uint256) {
        uint256 value = array[previous.length];
        for(uint i = previous.length - 1; i >= 0; i--) {
            if(result[i] == previous[i]) { continue; }
            previous[i + 1] = previous[i];
        }
        previous[previous.length] = value;
        return value;
    }
    function mutateFromSecond(uint256[] memory array) public view returns (uint256) {
        result = array;
        return result[2];
    }
    function mutateFromLast(uint256[] memory array) public view returns (uint256) {
        result = array;
        return result[1];
    }
}
