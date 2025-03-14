pragma solidity ^0.8.0;
contract Duplicates
{
    function Write(uint50 a) public {a=a+1;}
    function Read(uint50 a) public view returns (uint50){return a;}

}
