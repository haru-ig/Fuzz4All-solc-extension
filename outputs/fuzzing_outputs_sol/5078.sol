pragma solidity ^0.8.0;
contract Mutator {
    event MutatorCallBack(uint i);
    uint x;
    constructor() {x = 42;}
    modifier update() { x = x + 1; emit MutatorCallBack(x); return; }
    function update(uint b) public update {
        x = b;
    }
}
