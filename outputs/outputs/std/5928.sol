pragma solidity ^0.8.0;
contract SemanticEvidentChanges11 {
    uint256 x;
    address add;
    uint256 y;
    uint256 z;
    function setAdd(address _addr) public {
        add = _addr;
    }
    function getAdd() public view returns (address a) {
        return (add);
    }
    function setY(uint256 _y) public {
        y = _y;
    }
    function getY() public view returns (uint256 y) {
        return (y);
    }
    function setZ(uint256 _z) public {
        z = _z;
    }
    function getZ() public view returns (uint256 z) {
        return (z);
    }
}
