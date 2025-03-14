pragma solidity ^0.8.0;
contract MutatedDynamicArrays {
    uint256[] internal elements;
    uint256 internal lastUpdated;

    function setInternalWithArray() public {
        require(now > lastUpdated, "Cannot modify before setting");
        lastUpdated = now;
        elements = new uint256[](0);
    }

    function removeFirst() internal {
        elements = internalArray();
        internalArray = new uint256[](0);
        setInternalWithArray();
    }
}

pragma solidity ^0.8.0;
contract MutatedDynamicArrays {
    uint256[] internal elements;
    uint256 internal lastUpdated;

    function setInternalWithArray() public {
        require(now > lastUpdated, "Cannot modify before setting");
        lastUpdated = now;
        elements = internalArray();
        internalArray = new uint256[](0);
        setInternalWithArray();
    }

    function internalArray() internal view returns (uint256[] memory) {
        return elements;
    }


    function internalArrayCount() internal view returns (uint256) {
        return 0;
    }








}
