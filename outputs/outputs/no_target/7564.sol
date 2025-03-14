pragma solidity ^0.8.0;
import "./NewFunction.sol";
contract ContractWithNewFunction {
    function generate()public view returns(address){
        return(address(new NewFunction));
    }
}
