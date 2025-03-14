pragma solidity ^0.8.0;
contract MutationEquivalence222
{
     mapping(uint => string) public names;
}
contract MutationEquivalence333
{
     uint[100] public names;
}
contract MutationEquivalence444
{
     function () external payable {
         require(msg.value > 0, "You must send data to the contract");
     }
}
