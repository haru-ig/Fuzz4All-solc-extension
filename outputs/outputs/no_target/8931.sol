pragma solidity ^0.8.0;
contract EquivalentAbiMutations_v2 {
    uint constant public _Value22 = 203;
    uint256 constant public _Value23 = 88;
    uint256 constant public _Value20 = 89;
    function test (uint256  _value21) public {
    }
}
contract EquivalentMutations_2020 {
    uint constant public _Value22 = 203;
    uint256 constant public _Value23 = 88;
    uint256 constant public _Value20 = 89;
    function a (uint256 _value21) public;
}
contract EquivalentMutations_1921 {
    uint constant public _Value22 = 203;
    uint256 constant public _Value23 = 88;
    uint256 constant public _Value20 = 89;
    function test2 (uint _value22) public;
}
contract EquivalentMutations_2320 {
    uint constant public _Value22 = 0;
    uint constant public _Value23 = 0;
    uint constant public _Value20 = 0;
    function t () public {
        EquivalentMutations_2020 a;
        a.a(_Value20);
    }
}
