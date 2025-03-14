pragma solidity ^0.8.0;
contract NonEquivalentABIv05SemanticsAreNotEquivalentMutated {
    uint constant public _Amount = 20000;
    uint constant public _Value = 30000;
    event Mint (uint amount, uint value);
    function mintW () public when (msg.sender == msg.sender) {
        emit Mint(_Amount, _Value);
    }
}
