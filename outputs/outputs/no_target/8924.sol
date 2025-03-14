pragma solidity ^0.8.0;
contract EquivalentAbiMutations_v2  {
    uint constant public _Value203 = 1;
    uint constant public _Value206 = 1;
    uint constant public _Value221 = 1;
    uint constant public _Value225 = 1;
    function test (uint256  _value21, uint256  _value22, uint256, uint256  _value224, uint256  _value223, uint256  _value220) public returns (uint256, uint256) {
        return (_value221,_value225);
    }
}


pragma solidity ^0.8.0;
contract EquivalentAbiMutations_v2  {
    uint constant public _Value203 = 1;
    uint constant public _Value206 = 1;
    uint constant public _Value221 = 1;
    uint constant public _Value225 = 1;
    function test (uint256  _value216, uint256  _value224) public returns (uint256, uint256, uint256) {
        return (_value216,_value224,uint8(_Value221));
    }
}
