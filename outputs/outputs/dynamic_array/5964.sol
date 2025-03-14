pragma solidity ^0.8.0;
contract Test11498738 {
    function f(address[] memory) public view returns (uint256) {
        return dataArray.length;
    }

    uint[][] internal dataArray;
    address[] internal newMemory;

    constructor () {
        for(uint i = 0; i < 10; ++i) {
            newMemory.push(address(this));
            dataArray.push(new uint[](10));
        }

        for(uint i = 0; i < 10; ++i) {
            emit (newAddressEmitted(newMemory[i]));
        }
    }

    function newAddressEmitted(address a) internal returns (uint256) {
        return a;
    }
}
