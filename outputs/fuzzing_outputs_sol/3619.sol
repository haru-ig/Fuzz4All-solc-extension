pragma solidity ^0.8.0;
contract MutateSemantic6Caller5 {
    uint256 public a;

    function modifyC() public payable {
        a = modifyC(a + 1 + 3, a);
    }
}
