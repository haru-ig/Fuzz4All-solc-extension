pragma solidity ^0.8.0;
contract ContractWithNewModifier2 {
    modifier mod_func2(uint32 input) {

        assert(true);
        return;
    }
    function generate()public view returns(address){
        return(address(this));
    }
}
