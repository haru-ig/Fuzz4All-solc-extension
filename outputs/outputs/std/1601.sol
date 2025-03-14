pragma solidity ^0.8.0;
contract Mutator {
    constructor (uint256[] memory array_) {
        array = array_;
    }
    function getArray() public view returns (uint256[] memory) {
        return array;
    }
    function setArray(uint256[] memory _array) public {
        array = _array;
    }
}

pragma solidity ^0.8.0;
contract Library {
    function createArray() public pure returns (uint256[] memory memoryCreate){
        return memoryCreate;
    }
}
