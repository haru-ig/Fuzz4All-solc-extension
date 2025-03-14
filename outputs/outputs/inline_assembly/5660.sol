pragma solidity ^0.8.0;
import "../InterfaceWithStorage2.sol";
contract ConstantAccessBlock4Mutator3 is InterfaceWithStorage2{}
contract ConstantAccessBlock4Mutator4 {
    uint public constant _var = 1;
    constructor() {
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
