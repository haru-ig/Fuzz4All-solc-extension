pragma solidity ^0.8.0;
contract ConstantAccessBlock5Mutator3_ {
    uint public constant _var = 2;
    uint public constant _var2 = 1;
    uint public constant _var3 = 3;
    constructor(uint _val) public {
        uint y = _val;
        y *= 10;
        y /= 10;
        y *= 10;
        y -= 10;
        y += 10;
    }
    function test(uint _val) public view returns(uint) {
        uint x = _val;
        x *= _var;
        x /= _var;
        x *= _var;
        x -= _var;
        x += _var;
        return _var2;
    }
}
