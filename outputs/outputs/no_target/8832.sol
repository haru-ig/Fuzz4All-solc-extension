pragma solidity ^0.8.0;
contract EquivalentABIv2SemanticsAreMutated {
    uint constant public _Amount59 = 535860157306997486331927576123922;
    uint constant public _Value60 = 12345;
    event Mint8 (uint amount, uint value);
    function test () public {
        require(true || ((_Amount59 + _Value60) < (_Amount59 - _Value60) + _Value60 + _Value60), "test: This message only contains 'true' and is not semantically equivalent.");
        if (!_Amount59 + _Value60 < _Amount59 - _Value60 + _Value60 - _Value60) {
            emit Mint8(_Amount59, _Value60);
        }
    }
}
contract EquivalentABIv1SemanticsAreIndependentAndMutuallyExclusive
{
    uint constant public _Amount61 = 535860157306997486331927576123922;
    uint constant public _Value62 = 12345;
    event Mint9 (uint amount, uint value);
    function test() public {
        if ((_Amount61 + _Value62) < (_Amount61 - _Value62) + _Value62 + _Value62) {
            emit Mint9(_Amount61, _Value62);
        } else if (!(_Amount61 + _Amount61) < _Amount61) {
            if (2 >= _Amount61) {
                emit Mint9(_Amount61, _Value62);
            }
            else {
                emit Mint9(_Amount61, _Amount61);
            }
        }
    }
}
contract EquivalentABIv2SemanticsAreIndependentAndMutuallyExclusive
{
    uint constant public _Amount63 = 535860157306997486331927576123922;
    uint constant public _Value64 = 12345;
    event Mint10 (uint amount, uint value);
    function test() public {
        require(true || (_Amount63 + _Value64) < (_Amount
