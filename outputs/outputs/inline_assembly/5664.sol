pragma solidity ^0.8.0;
contract ConstantAccessBlock5Mutator3 {
    uint public constant _var = 2;
    uint public constant _var2 = 1;
    uint public constant _var3 = 3;
    constructor() {
    }
    function test() public view returns(uint) {
        uint x = 1;
        x *= 10;
        x /= 10;
        x *= 10;
        x -= 10;
        x += 10;
        return _var;
    }
}
