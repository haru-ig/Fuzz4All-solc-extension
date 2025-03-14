pragma solidity ^0.8.0;
contract  Mutate4 {
    function setarray9(mut address[] memory newaddressarray) public {
        addressarray9 = newaddressarray;
    }
    address[] private addressarray9;
}
