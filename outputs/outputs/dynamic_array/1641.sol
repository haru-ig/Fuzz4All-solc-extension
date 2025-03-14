pragma solidity ^0.8.0;
contract MutatedDynamicArrays5{
    function modify(uint256[2] memory _y) public {}
    function modifyx(uint256 _y) public {
        modify(_y);
    }
    function modifyy(uint256[2] storage _y) public {}
    function modifyyz(uint256[2] storage _y) public {}
}
