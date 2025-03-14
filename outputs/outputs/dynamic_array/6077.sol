pragma solidity ^0.8.0;
contract Test29999Mutated {
    address public adr;
    constructor (address _adr) public {
        adr = _adr;
    }
    fallback () external {
    }
}
