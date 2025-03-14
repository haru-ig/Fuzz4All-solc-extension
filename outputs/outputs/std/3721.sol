pragma solidity ^0.8.0;
contract ModdedProgram {
    uint256 public value;
    uint256 constant BASE = 5;
    uint256 constant PRIME = 5;
    uint256 constant MOD = 10;
    constructor() {
        value = 7;
    }
    function set(uint256 x) public {
        value = x;
    }
    function sqrt(uint x) public {
        uint256 a = value;
        value = ( ((value + BASE*a) % MOD) * ((10**20) % MOD)) % MOD;
    }
    function pow(uint a, uint x) public {
        value = ((value * a) % MOD) * ((10**20) % MOD);
    }
    function exp(uint16 x) public {
        value = value * (x+1) % MOD;
    }
    function log(uint x) public {
        value = (MOD*x) % MOD;
    }
}
