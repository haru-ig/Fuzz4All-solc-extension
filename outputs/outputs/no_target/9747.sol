pragma solidity ^0.8.0;
interface IToken { function testContract() external; }
contract TestContract {
    function testGwei() public { IToken(address(0x61aF76704C80e929734bD69e38F47f9b66a6D1c0)).testContract(); }
}
