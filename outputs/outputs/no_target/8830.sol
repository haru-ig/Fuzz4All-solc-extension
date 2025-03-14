pragma solidity ^0.8.0;
contract EquivalentABIv2SemanticsAreMutated {
    uint constant public _Amount58 = 10000000000000000;
    uint constant public _Value59 = 12345;
    event Mint8 (uint amount, uint value);
    function test () public {
        if ((_Amount58 + _Value59) < (_Amount58 - _Value59) + _Value59 + _Value59) {
            emit Mint8(_Amount58, _Value59);
        }
    }
}
