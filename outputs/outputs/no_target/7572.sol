pragma solidity ^0.8.0;
contract ContractWithOldModifier {
    modifier mod_func(uint32 input) {
        require(true);
        _;
    }
    function generate()public view returns(address)payable{
        return(address(this));
    }
}
