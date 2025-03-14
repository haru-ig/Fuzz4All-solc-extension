pragma solidity ^0.8.0;
contract Test {
    uint pub m_testUint;
    function setID(uint) public { }
    function getID() public pure returns (uint) { return m_testUint; }
}
