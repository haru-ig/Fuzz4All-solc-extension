pragma solidity ^0.8.0;
contract Test30000 {
    address public adr;
    bool private valid;
    constructor (address _adr) public {
        emit Log();
        adr = _adr;
    }
    fallback () external {
        emit Log();
    }
    event Log ();
}
