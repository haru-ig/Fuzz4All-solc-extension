pragma solidity ^0.8.0;
contract SemanticEvidentChanges7 {
    uint256 x;
    address add;
    function setAdd(address _addr) public {
        add = _addr;
    }
    function getAdd() public view returns (address a) {
        return (add);
    }
}

pragma solidity ^0.8.0;


contract SemanticEvidentChanges8 {
    uint256 x;
    address add;
    function setAdd(address _addr) public {
        add = _addr;
    }
    function getAdd() public view returns (address a) {
        return (add);
    }
}
