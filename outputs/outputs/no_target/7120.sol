pragma solidity ^0.8.0;
contract Test {
    function setID() public { }
    function getID() public { }
}
contract Test_096 {
    uint160 a = 1;
    uint160 b = 2;
    uint160 c = -1;

    function setID() public { }
    function getID() public view returns (bool) { return a == 1 && b == 2 && c == -1; }
}
