pragma solidity ^0.8.0;
contract SemanticEvidentChanges12 {
    address add;
    uint256 y;
    function getAdd() public view returns (address) {
        return (add);
    }
    function setY(uint256 _y) public {
        y = _y;
    }
    function getY() public view returns (uint256) {
        return (y);
    }
}
