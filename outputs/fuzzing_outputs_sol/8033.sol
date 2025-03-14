pragma solidity ^0.8.0;
contract SemanticEquivalent38481133 {
    mapping (uint256 => address) public idToOwner;

    function setOwner(uint256 _id, address _owner) public onlyOwner {    idToOwner[_id] = _owner; }
    fallback() external {
      return;
    }

}
