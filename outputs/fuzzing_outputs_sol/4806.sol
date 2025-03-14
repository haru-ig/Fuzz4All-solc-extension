pragma solidity ^0.8.0;
contract Caller {
    receive() public payable {}
    fallback () public payable {}
    function mutatedContract(bool bool) public {
        MutateSemantically.update(bool(true));
    }
}
