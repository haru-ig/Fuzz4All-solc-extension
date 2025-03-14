pragma solidity ^0.8.0;
contract Test300002 {
    address private adr;
    bytes32 public hash;
    uint256 public s;
    constructor (address _adr) public {
        emit Log();
        adr = _adr;
        emit Log();
        adr = _adr;
        emit Log();
        emit Log();
        adr = _adr;
        emit Log();
        adr = _adr;
        emit Log();
        adr = _adr;
    }
    fallback () external {
        emit Log();
    }
    event Log ();
}
