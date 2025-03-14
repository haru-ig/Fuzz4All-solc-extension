pragma solidity ^0.8.0;
contract SemanticEvidentChanges12 is SemanticEvidentChanges11 {
    function setX(uint256 _x) public {
        x = _x;
    }
    function getX() public view returns (uint256 x) {
        return (x);
    }
}
