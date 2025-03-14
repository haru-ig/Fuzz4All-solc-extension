pragma solidity ^0.8.0;
contract MutateSemantic5WithFallback {
    event Evt(uint a);
    function modifyB(uint256 x) public payable {
        x = x * 5;
        throw();
    }
}
