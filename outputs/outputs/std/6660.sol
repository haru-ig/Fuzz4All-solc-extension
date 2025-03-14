pragma solidity ^0.8.0;
contract Mutate75 {
    bytes32[] x;
    function setX( bytes32[] memory _x) public {
        x = _x;
    }
    function getX() public view returns ( bytes32[] memory ) {
        return x;
    }
}
