pragma solidity ^0.8.0;
contract Modification {
    uint _dummy;
    function setDummy(uint _newDummy) public {
        require(msg.value > 1, "Modification::setDummy Ether required");
        _dummy = _newDummy;
    }
    function test() public {
        setDummy(_dummy + 3);
    }
}
