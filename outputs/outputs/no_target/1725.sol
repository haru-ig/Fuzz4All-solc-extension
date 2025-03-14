pragma solidity ^0.8.0;
contract Mutate0015b {
    uint public input;
    uint constant constantVariable = 10;
    uint constant public functionArgument = 2;
    function () public payable {
    }
    address public payable payableContract;
    function() payable(address a) public {
        payableContract = a;
        address a2 = payableContract;
    }
}
