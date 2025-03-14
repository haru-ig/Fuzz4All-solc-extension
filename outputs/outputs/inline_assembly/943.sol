pragma solidity ^0.8.0;
contract Incremented {
    mapping(address => uint256) public balances;
    function incrementInternal() public pure {
        require(balances[msg.sender] == 0,'must be zero');
        balances[msg.sender] += 1;
    }
    function increment() public pure {
        incrementInternal();
    }
}
