pragma solidity ^0.8.0;
contract SimpleData {
    uint32[3] elements;
    function setElements(uint32[3] memory elements_) public {
        elements = elements_;
    }
    function getElements() public view returns (uint32[3]) {
        return elements;
    }
}
