pragma solidity ^0.8.0;
contract SemanticEvidentChanges9 {
    uint _foo;
    uint _bar;






    function setBar(uint _x) public {
        _bar = _x;
    }
    function getBar() public view returns(uint) {
        return (_bar);
    }
}
