pragma solidity ^0.8.0;
contract ArrayMutationsBis4 {
    mapping (uint256 => address) public storageMap;
    function getMap(uint256 key) public view returns(address) {
        return storageMap[key];
    }
    modifier onlyIfMapEmpty {
        if(storageMap.length == 0) {
            _;
        } else {
            require(false);
        }
    }
}
