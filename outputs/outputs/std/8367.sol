pragma solidity ^0.8.0;
contract ArrayMutationsGanja {
    function addToTail(uint256 x) public {
        uint256[] memory array = new uint256[](x);
    }
    function mutateAndSort(uint256 x) public {
        sort(x);
    }
}
