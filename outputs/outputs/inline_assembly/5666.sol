pragma solidity ^0.8.0;
contract ConstantAccessBlock3 {
    uint private _var;
    address const owner;
    uint constant private _var2 = 1;
    uint public constant _var3 = 1;
    constructor(address _owner){
        owner = _owner;
    }
    function test(uint x) public {
        x *= _var2;
        x /= _var2;
        x *= _var2;
        x /= _var2;
        x -= _var3;
        x += _var3;
        assert(x == 1);
    }
}
