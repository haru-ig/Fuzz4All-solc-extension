pragma solidity ^0.8.0;
contract NonEquivalentABIv05SemanticsAreNotEquivalentMutated {
    uint constant public _Amount64 = 20000;
    uint constant public _Value23 = 30000;
    uint constant max_amount = _Amount60 == 0x0? 0 : _Amount60;
    event Mint (uint amount, uint value);
    function mintB () public {
        emit Mint(max_amount, _Value23);
    }
}
