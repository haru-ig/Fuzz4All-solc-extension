pragma solidity ^0.8.0;
contract C {
    uint x = 5;
    mapping (uint => string) mapX;
    function setX(uint j, string memory _x) public {
        assembly {
            mapX.store j, _x
        }
    }
    function getX(uint i) public view returns (string memory) {
        return mapIn.fetch i
    }
}
