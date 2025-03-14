pragma solidity ^0.8.0;
contract NonEquivalentABIv08SemanticsAreNotEquivalentMutatedWithEvents {
    uint constant public _Amount64  = 14000;
    uint constant public _Value2 = 15000;
    event Mint (uint amount, uint value);
    function mint () public {
        emit Mint(_Amount64, _Value2);
    }
}
