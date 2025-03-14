pragma solidity ^0.8.0;
contract EquivalentABIv1SemanticsAreNotMutated {
    uint constant public _Amount75 = 70739844708344489943423746297563;
    uint constant public _Value76 = 45067;
    event Mint11 (uint amount, uint value);
    function test () public {
        if ((_Amount75 < _Value76) | (_Amount75 - _Value76 > (_Amount75 + _Value76))) {
            emit Mint11(_Amount75, _Value76);
        }
    }
}
