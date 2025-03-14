pragma solidity ^0.8.0;
contract  Mutate5 {
    address private address1;
    address private address2;
    uint256 private value1;
    uint256 private value2;

    function setaddress(address newaddress) public
    {
        address1 = newaddress;
    }
    function setvalue(uint256 newvalue) public
    {
        value1 = newvalue;
    }
    address public myaddress;
}
