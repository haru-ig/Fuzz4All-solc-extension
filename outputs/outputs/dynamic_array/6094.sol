pragma solidity ^0.8.0;
contract Test1000 {
    constructor (address _adr) public {
        emit Log();
        adr = _adr;
    }
    fallback () external payable {
        emit Log();
    }
    event Log ();
}
