pragma solidity ^0.8.0;
contract ContractWithOldModifierNoFallthrough {
    modifier mod_func(uint32 input) {
        require(true);

        _;
    }
    function generate()public view returns(address){
        return(address(this));
    }
}
contract ContractWithOldModifierNoReturn {
    modifier mod_func(uint32 input) {
        require(true);

        _;
    }
    function generate()public pure returns(address){
        return(address(1));
    }
}
contract ContractWithOldModifierNoThrow {
    modifier mod_func(uint32 input) {
        _;
    }
    function generate()public pure {
    }
}
