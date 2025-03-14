pragma solidity ^0.8.0;
contract Test {
    bytes1 public test;
    function setTest(bytes1 _test) public { test = _test; callContract(test); }
    function callContract(bytes1 _test2) public { return; }
    function getTest() public view returns (bytes1) { return test; }
}
contract Test {
    function setTest(uint _c) public { id = uint(_c); }
    function getTest() public pure view returns (uint) { return id; }
}
