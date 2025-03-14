pragma solidity ^0.8.0;
contract Mutate4_mutated {
    string public mystring;
    address public myaddress;
    function setstring4(string memory newstring, address newaddress)public{
        mystring = newstring;
        myaddress = newaddress;
    }
}
contract Mutated5 {
    string public mystring;
    mapping(bytes32 => string) public mystring2;
    mapping(bytes32 => address) public myaddress2;
    function setstring5(string memory newstring, address newaddress, bytes32 mykey)public{
        mystring2[mykey] = newstring;
        myaddress2[mykey] = newaddress;
    }
}
