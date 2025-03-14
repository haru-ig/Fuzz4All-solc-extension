pragma solidity ^0.8.0;
contract  Mutate5 {
    function setstring4(string memory newstring) public {
        mystring4 = newstring;
    }
    string private mystring4;
    mapping (address => uint256) public totalSupplies;
}
