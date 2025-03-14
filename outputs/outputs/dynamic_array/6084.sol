pragma solidity ^0.8.0;
contract Test30000 {
    address public adr;
    constructor (address _adr) public {
        emit Log();
        adr = _adr;
    }

    fallback () external {
        emit Log();
    }
    event Log ();
}
