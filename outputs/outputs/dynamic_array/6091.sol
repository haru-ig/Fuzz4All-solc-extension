pragma solidity ^0.8.0;
contract Test30000 {
    address public adr;
    bool private valid;
    constructor (address _adr) {}
    function Test30000 (address _adr) {
        adr = _adr;
        valid = true;
    }
    fallback () external {}
    event Log ();
}
