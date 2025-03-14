pragma solidity ^0.8.0;
contract Mutated{
    function Mut(address _callee) external payable {
        _callee.Transfer(_callee, uint256(uint256.max));
    }
}
