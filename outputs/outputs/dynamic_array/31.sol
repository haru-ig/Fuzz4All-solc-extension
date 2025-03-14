pragma solidity ^0.8.0;
contract E {
    uint256[] public bArray;
    uint256[] private bArray2;
    constructor () {
        bArray = new uint256[](10);
        bArray2 = new uint256[](10);
    }
    function test() public {
        bArray = new uint256[](1000);
        bArray2 = new uint256[](1000);
    }
    function test2(uint z) public {
        bArray = new uint256[](z);
        bArray2 = new uint256[](z);
    }
    function test3(uint z1, uint z2) public {
        bArray = new uint256[](z1);
        bArray2 = new uint256[](z2);
    }
}
