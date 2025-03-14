pragma solidity ^0.8.0;
contract Test {
    function setID() public { }
    function getID() public view returns (uint) { return 1; }
    function setID2() public { }
    function getID2() public view returns (uint) { return 2; }
    function setID3() public { }
    function getID3() public view returns (uint) { return 3; }
    function getID4() public view returns (uint) { return 4; }
}

pragma solidity ^0.8.0;
contract Test {
    constructor () { }
    function getID() public view returns (uint) { return 1; }
    function setID() public { }
    function increase() public { }
}



contract Test {
    function setID() public { }
    uint256 private ID;
    event IDSet(uint ID);
    function getID() public view returns (uint) { ID; }
    function setID2() internal view returns (uint) { ID; }
}
