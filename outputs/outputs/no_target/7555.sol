pragma solidity ^0.8.0;
contract ContractWithNewFunction {
    function generate()public view returns(address){
        return(address(this));
    }
}
