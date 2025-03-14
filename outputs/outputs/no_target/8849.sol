pragma solidity ^0.8.0;
contract NotEquivalentABIv2SemanticsAreMutated4 {
    uint constant public _Address87 = 2770625462762890;
    uint constant public _Value105 = 925908;
    event Mint29 (address address_, uint value_);
    function test () public {
        address _address88;
        if (_address88 < (_Address87 - _Value105)) {
            _address88 = 1;
        }
        emit Mint29(_Address87, _Value105);
    }
}
