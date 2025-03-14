pragma solidity ^0.8.0;
contract SemanticEvidentChanges6 is SemanticEvidentChanges6 {
    uint256 x;
    uint256 y;
    address add;
    function setAdd(address _addr) public {
        add = _addr;
    }
    function getAdd() public view returns (address a) {
        return (add);
    }
}
