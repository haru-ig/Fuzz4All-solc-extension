pragma solidity ^0.8.0;
contract  Mutate8 {
    function setarray22( bytes32[] memory newaddressarray) public {
        addressarray22 = newaddressarray;
    }
    bytes32[] private addressarray22;
}
