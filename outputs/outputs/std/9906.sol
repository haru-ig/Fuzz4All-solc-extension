pragma solidity ^0.8.0;
interface Interface1 {
    function myFunction() public returns (uint);
}
interface Interface2 {
    function myFunction() public payable returns (uint);
}
contract N4Mutated9 is Interface2 {
    constructor () {

    }
    function change1() public payable {

    }
}
