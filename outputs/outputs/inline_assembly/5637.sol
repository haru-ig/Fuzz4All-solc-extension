pragma solidity ^0.8.0;
contract ConstantAccessBlock5Mutator {
    uint8 internal _var;
    constructor(){
        _var = 2;
    }
    function test() public returns (uint8) {

        uint8 y = 2;
        assembly {

            x := sub(sub(y,1),1)
        }
        return _var;
    }
}
