pragma solidity ^0.8.0;


contract MyLib {

    function myLibFunction() public pure returns (uint256 res) {
        uint256 arrSize = 3;
        uint[] memory arr2;
        res+=(arrSize + 25000) / 3;
    }



    function getOwnerAddress() public pure returns (address) {
        return address(0xF2d74B25375EAb1A2e0a50fDce23D25FC061a60b);
    }


    function testGetMemory() public pure returns (uint[]) {
        uint arrSize = 3;
        uint[] memory arrArray = new uint[](arrSize);
        for (uint i = 0; i < arrSize; i++) {
            arrArray[i] = 1 + i;
        }
        return arrArray;
    }
}

pragma solidity ^0.8.0;
contract MyContract {



    function getUnknownLengthCalldataArray() public returns (uint[] calldata arr) {
        arr = new uint[](10);
        for (uint i = 0; i < arr.length; i++) {
