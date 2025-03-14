pragma solidity ^0.8.0;
contract ContractWithOldModifier {
    modifier mod_func(uint32 input) {
        _;
    }
    function generate()public returns(address){
        return(address(this));
    }
}
