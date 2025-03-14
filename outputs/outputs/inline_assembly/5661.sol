pragma solidity ^0.8.0;
contract ConstantAccessBlock4Mutator2 {
    uint public constant _var = 1;
    struct Inner {
        uint _var = 1;
    }
    function test() public view returns(uint) {
        uint x = 1;
        x -= 10;
        x += 10;
        x *= 10;
        x /= 10;
        x *= 10;
        x -= 10;
        return _var;
    }
}
