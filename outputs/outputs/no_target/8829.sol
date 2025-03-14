pragma solidity ^0.8.0;
contract EquivalentABIv2SemanticsAreMutated {
    uint constant public _Amount59 = 23498658390556758641583159920623;
    uint constant public _Value60 = 10223;
    event Mint8 (uint amount, uint value);
    function test () public {
        if ((_Amount59 + _Value60) < 853124368853124) {
            emit Mint8(_Amount59, _Value60);
        }
    }
}

pragma solidity ^0.8.0;
contract EquivalentABIv2SemanticsAreNotMutated {
    uint constant public _Amount62 = 12567374360305944894756327;
    uint constant public _Value63 = 54321;
    event Mint9 (uint amount, uint value);
    function test () public {
        if (uint2uint256(uint2uint256(_Value63) * uint2uint256(_Amount62))) > 1075931562493156) {
            emit Mint9(_Amount62, _Value63);
        }
    }
}
contract Wrapper {
    function test(uint a, uint b, uint c, uint d, uint e, uint f, uint g, uint h, uint i, uint j, uint k, uint l, uint m, uint n, uint o) public returns(uint) {
        uint256 ffc = (uint256(a) * uint256(b));
        ffc += (uint256(c) * uint256(d));
        ffc *= uint256(4);
        ffc += (uint256(e) * uint256(f));
        ffc *= uint256(2);
        ffc += (uint256(g) * uint256(h));
        ffc /= uint256(2);
        ffc *= uint256(7);
        ffc += (uint256(i) * uint256(j));
        ffc
