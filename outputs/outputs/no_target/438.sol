pragma solidity ^0.8.0;
contract semantic2Mutated2 {

    modifier mutating() {
        uint256 curBalance = Semantic2Mutated1(mutatingCaller()).balanceChange(2);
        if (curBalance < 50) {
            emit MutatingBalance(msg.sender, 10, msg.value);
        } else {
            emit MutatingBalance(msg.sender, 30, msg.value);
        }
        _;
    }

    receive() external {
        revert("Not enought money here!");
    }
    function mutatingCaller() private view returns (Semantic2Mutated1 i) {
        return Semantic2Mutated1(msg.sender);
    }
    event MutatingBalance(address addr, uint256 balance, uint256 value);
}
