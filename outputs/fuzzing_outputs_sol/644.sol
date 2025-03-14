pragma solidity ^0.8.0;
contract SemanticEquivalent
{
    function semanticContract() public
    {
        (address myContract,(address myAddress)):(myContract,
        (address myAnotherContract,(address myAddress2):(myAnotherContract,
        (address myThirdAddress,(address,address) ) :(myThirdAddress,
        (address myFourthAddress,address) ) :(myFourthAddress,(address myAddress))))) ;
    }
}
