pragma solidity ^0.8.0;



contract NotMutator
{
    uint storedData;
    function setValue(uint input) public {
        storedData = input;
    }
    fallback() private pure {   }
}
