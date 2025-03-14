pragma solidity ^0.8.0;
contract Test30000Mutated {
    address public adr;
    uint private foo;
    constructor (address _adr, uint _foo) public {
        adr = _adr;
        foo = _foo;
    }
}
