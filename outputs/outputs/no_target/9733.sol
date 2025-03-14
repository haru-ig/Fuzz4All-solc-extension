pragma solidity ^0.8.0;
interface IToken { function testContract() external { return; } }

pragma solidity ^0.8.0;
interface IToken { function testContract() external constant returns(uint); }
contract Contract {
    uint _publicField = 0;
    function getter() public returns(uint) {
        return _publicField;
    }
    function setter(uint _arg) public {
        _publicField = _arg;
    }
    function add() public returns(uint) {
        return getter() + 2;
    }
}
