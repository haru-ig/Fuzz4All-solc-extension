pragma solidity ^0.8.0;
contract Test30000 {
    address private adr;
    mapping(address => bool) public bools;
    constructor (address _adr) public {
        emit Log();
        adr = _adr;
    }
    constructor (address[] memory _arr1, address _adr) public {
        emit Log();
        adr = _adr;
    }
    constructor (bool[] memory _bools, address _adr) public {
        emit Log();
        adr = _adr;
    }
    constructor (bool[] memory _bools1, bool[] memory _bools2, address _adr) public {
        emit Log();
        adr = _adr;
    }
    constructor (bool _bool, address _adr) public {
        emit Log();
        adr = _adr;
    }
    fallback () external {
        emit Log();
    }
    event Log ();
}
