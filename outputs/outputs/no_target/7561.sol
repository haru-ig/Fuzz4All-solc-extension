pragma solidity ^0.8.0;
contract ContractNoNewFunction {
    function generate()public view returns(address){
        return address(this);
    }
}
