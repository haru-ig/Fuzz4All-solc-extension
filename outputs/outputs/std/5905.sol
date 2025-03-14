pragma solidity ^0.8.0;
contract MutatedSemanticEvidentChanges5 {
    uint256 x;
    address add;
    function setAdd(address _addr) modifier {
        add = _addr;
        super.setAdd(_addr);
    }
    function setX(uint256 _val) public {
        x = _val;
    }
}
