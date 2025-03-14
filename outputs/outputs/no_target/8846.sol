pragma solidity ^0.8.0;
contract EquivalentABIv2SemanticsAreMutated4 {
    uint constant public _Amount103 = 10;
    uint constant public _Value105 = 68734;
    event Mint45 (uint amount, uint value);
    function test () public {
        uint _value106;
        if ((_Amount100 + _value106) >= ((_Amount102 + _Value105) - _Amount103))) {
            _value106 = 128;
        }
        emit Mint45(_Amount102, _Value105);
    }
}

contract EquivalentABIv2SemanticsAreMutated5 {
    uint constant public _Amount172 = 1;
    event Mint18 () external;
    function test () public {
        uint _value173;
        _value173 = 67;
        emit Mint18();
    }
}
