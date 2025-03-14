pragma solidity ^0.8.0;
contract AccessBlock5Mutator4 {
    uint public constant _var = 1;
    constructor() {
    }
    function test() public view returns(uint) {
        uint x = 1;
        x = _var + 10;
        x = 1 + _var;
        uint y = _var + x;
    }
}
