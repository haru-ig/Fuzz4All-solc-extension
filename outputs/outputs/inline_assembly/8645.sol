pragma solidity ^0.8.0;
contract Modul{
address A = address(new Modul(2));
constructor () public {require(keccak256(abi.encodePacked("A = ",A)) == keccak256(abi.encodePacked("A = ",Modul(2)))));}
}
