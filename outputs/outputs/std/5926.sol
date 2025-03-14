pragma solidity ^0.8.0;
contract SemanticEvidentChanges11 {
    address add;
    bool z;
    function setAdd(address _addr) public {
        add = _addr;
    }
    function getAdd() public view returns (address a) {
        return (add);
    }
}
