pragma solidity ^0.8.0;
contract Test2 {
    constructor () public { }
    function setID(uint) public { }
    function getID() public returns (uint) { return 1;}
}
contract Test4 {
    constructor () public { }
    function setID(uint) public { }
    function getID() public returns (uint) { return 2;}
    function () public payable { }
}
contract Test5 {
    constructor () public { }
    function setID(uint) public { }
    function getID() public returns (uint) { return 3;}
    function set4() public {
        Test().setID(4);
    }
    function () public payable { }
    function ()  public payable  { }
    function () payable  {}
    function ()  fallback  { }
    function ()  pure { }
}
