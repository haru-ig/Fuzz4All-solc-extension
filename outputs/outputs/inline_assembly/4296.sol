pragma solidity ^0.8.0;
contract NotMutators22SemanticallyEquivalentMutated4_Modified{
    uint public i = 0xAF0648487CD628941B4E3A0D15E399EEC9872345075E7E29E68779CE66E6D5C3;
}
pragma experimental ABIEncoderV2;

contract NotMutators22SemanticallyEquivalentMutated4 {
    function updateValue() public {
        string memory _newvalue = keccak256("");
        assembly {
            mstore(_newbytes, _newvalue)
        }
    }

    function mutator() public {
        uint256 _oldint = decode2Uint256(0xAF0648487CD628941B4E3A0D15E399EEC9872345075E7E29E68779CE66E6D5C3, "");
        a.not();
        uint256 _newint = (_oldint + 0x1);
        uint256 _addint = _newint + 0x1;
        uint256 _subtract = i;
        uint256 _product = sub(_subint,_subtract);
        uint256 _andint2 = and(_addint,_product);
        uint256 _add2 = or(_addint,_product);
        uint256 _add3 = and(_andint2,_add2);
        uint256 _add4 = add(_add3,_subtract);
        uint256 _add5 = add(_add4,_subtract);
        uint256 _uint3 = sub_nocheck(0x1,_add5);
        uint256 _uint4 = add_nocheck(0x1,_add5);
        uint256 _uint1 = sug(1337,_uint3);
        uint256 _uint2 = not(0x1);
    }
    function decode2Uint256(string memory s, uint256 _offset) internal pure returns (uint256)
    {
        return string
