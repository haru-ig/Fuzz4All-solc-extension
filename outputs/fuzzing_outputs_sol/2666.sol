pragma solidity ^0.8.0;
import "@openzeppelin/contracts/utils/Address.sol";

contract FallbackReceivingContractNoFallbackFunctionOne {

    function fallback() public pure {


        if(true) revert();
    }


    function receive() external pure {}
}
