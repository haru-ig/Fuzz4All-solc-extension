pragma solidity ^0.8.0;
contract  Mutate5 {
    function setarray10(address[] memory newaddressarray) public {
        addressarray10 = newaddressarray;
    }
    address[] private addressarray10;
}
