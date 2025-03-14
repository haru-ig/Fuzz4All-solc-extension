pragma solidity ^0.8.0;

contract Arrays {

    function arrayCreation() public {
        uint256[] memory array = new uint256[](25);
        uint256[] memory array2;
        uint256[] memory array3;
        uint256[] memory array4;

        array2 = array;
        array3 = new uint256[](25);
        array4 = new uint[](25);
    }
}
