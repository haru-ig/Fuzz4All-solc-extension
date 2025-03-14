pragma solidity ^0.8.0;
contract Test38 {
    function nestedf() public view returns (uint[] memory) {
        uint[,] memory a = new uint[2,10];
        a = a;
        return a;
    }
}
