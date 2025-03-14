pragma solidity ^0.8.0;
contract EquivalentABIv2SemanticsAreMutated {
    uint constant public _Amount84 = 990666802650832832;
    uint constant public _Value85 = 2413;
    event Mint22 (uint amount, uint value);
    function test1 () public {
        uint _value86 = _Amount84 / (1000000000000000000000000000000000000000000000000000000000000000000 * _Amount84 * _Value85 * _Value85);
        emit Mint22(_Amount84, _Value85);
    }
}
