pragma solidity ^0.8.0;
contract NonEquivalentABIv05SemanticsAreNotEquivalentMutated {
    uint constant public _Amount32 = 20000;
    uint constant public _Value23 = 30000;
    event Mint (uint amount, uint value);
    function mintB () public {
        emit Mint(_Amount32, _Value23);
    }
}
