pragma solidity ^0.8.0;
contract Fabric is IFabric{
    mapping(address=>uint8) public x;
    function setX(uint8 _x) public {
        x[_from] = _x;
    }
}
