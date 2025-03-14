pragma solidity ^0.8.0;
contract ContractWithNewModifier {
    modifier mod_func(uint32 input) {



        require(true, "Assertion failed");
        _;
    }
    function generate()public view returns(address){
        return(address(this));
    }
}
