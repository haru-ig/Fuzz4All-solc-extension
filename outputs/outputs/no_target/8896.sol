pragma solidity ^0.8.0;
contract EquivalentAbiMutations {
    uint constant public _Value203 = 1;
    uint constant public _Value206 = 1;
    uint constant public _Value220 = 1;
    uint constant public _Value213 = 1;
    uint constant public _Value225 = 1;

    function test (uint  _value213, uint  _value224) public returns (uint, uint, uint, uint) {
        return (_Value206, _Value203, _Value220, _Value225);
    }
    function f () public returns(uint256 x) {
        assert(x >= _Value221);
        return x;
    }
}
