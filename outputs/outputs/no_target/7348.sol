pragma solidity ^0.8.0;
contract BugsVersionedAbiCoder{
    address contractOwner;
    function BugsVersionedAbiCoder() public{}
    function setContractOwner(address newOwner) public {
        contractOwner = newOwner;
    }
}
