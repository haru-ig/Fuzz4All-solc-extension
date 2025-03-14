pragma solidity ^0.8.0;
contract MutateSemantic4 {
    function modifyF() public returns (uint x, uint32 a) {
        x = 100;
        a = 3;
    }
}
contract Caller {
    function callF(address x) public payable {
        x.call{value: address(this).balance}("");
        throw;
    }
}
