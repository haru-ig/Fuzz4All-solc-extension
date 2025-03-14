pragma solidity ^0.8.0;
contract SemanticEvidentChanges5 {
    uint256 x;
    address add;
    function setAdd(address _addr) public {
        add = _addr;
    }
    function setAdd2(uint256 _data) public {
        x = _data;
    }
    function getAdd() public view returns (address a) {
        a = add;
    }

}
