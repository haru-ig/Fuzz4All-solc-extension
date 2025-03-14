pragma solidity ^0.8.0;
contract Test {
    function setID() public { }
    function setID2() public { }
    function setIDAndReturn() public returns (uint) { return 1; }
    function getID() public view returns (uint) { return 2; }
}

pragma solidity ^0.8.0;
contract Test {
    function setID3() public { }
    function setID2() public { }
    function setIDAndReturn() public returns (uint) { return 2; }
    function setIDAndReturn2() public returns (uint) { return 1; }
    function getID() public view returns (uint) { return 2; }
}

```
