pragma solidity ^0.8.0;
contract ContractWithNewFunction {
    function generate(bool value)public view returns(uint128){
        return(uint256(value));
    }
}
