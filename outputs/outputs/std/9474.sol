pragma solidity ^0.8.0;
contract Contract2 {
    String myString = "This is a String";
    function setString(string memory newString)public{
        myString = newString;
    }
    function getString() public view returns (string memory){
        return myString;
    }
    function setStringNoReturn(string memory newString)public{
        myString = newString;
    }
}
