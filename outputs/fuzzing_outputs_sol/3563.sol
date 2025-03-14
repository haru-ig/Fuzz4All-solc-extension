pragma solidity ^0.8.0;
contract MutateSemantic5 {
    function modifyF() public returns (uint256 x) {
        x = 3;
        uint32 a;
        a = 5;
   }
}

contract MutateSemantic6 {
    function modifyF() public returns(uint256 x) {
        uint dataStorage;
        uint256 _ = dataStorage;
        x = _ + 100;
        uint256 a;
        a = 5;
    }
}
