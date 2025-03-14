pragma solidity ^0.8.0;
contract Mutated1 is MutatedCaller {
    receive() external payable { throw; }
    fallback(string memory _data) internal payable { revert(); }
}
