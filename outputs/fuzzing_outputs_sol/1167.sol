pragma solidity ^0.8.0;
contract Mutated {
    function notReallyMutant() public {
        simpleMutation();
        emit SimpleMutation3(1);
    }
    event SimpleMutation(address);
}
