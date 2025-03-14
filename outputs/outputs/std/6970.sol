pragma solidity ^0.8.0;
contract ArrayMutator  {
    using Array for Array.uint256[];
    uint256[] internal a;
    Array.uint256 aBytes;
    uint256 id = uint256(address(this));
    bool private isStorageMutated = false;
    constructor() {
        a = new Array.uint256[](1);
    }

    function getValue() public returns(uint256) {
        return memoryArrays[a].length > 0? memoryArrays[a][id] : 0;
    }


    function setValue(uint256 x) {
        isStorageMutated = true;

        a.push(x);

        memoryMappingOfIdsToAddresses[id] = a.length-1;
        id = id + 1;
        return;
    }

    function hasBeenModified() public view returns(bool) {
        return isStorageMutated;
    }

    function getIdValue() public view returns (uint256) {
        return id;
    }
}
