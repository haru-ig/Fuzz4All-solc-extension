pragma solidity ^0.8.0;
contract Test30000 {
    address public adr;
    uint128 private valid;
    constructor (address _adr) public {
        emit Log();
        adr = _adr;
    }
    fallback () external {
        emit Log();
    }
    event Log ();
}

contract Test30000 {
    address public adr;
    uint128 private valid;
    constructor (address _adr) public {
        valid = 1098;
        emit Log();
        adr = _adr;
    }
    fallback () external {
        emit Log();
    }
    event Log ();
}
