pragma solidity ^0.8.0;
contract EquivalentABIv1SemanticsAreMutated {
    uint constant public _Amount57 = 535860157306997486331927576123922;
    uint constant public _Value58 = 12345;
    event Mint7 (uint amount, uint value);
    function test () public {
        if ((_Amount57 + _Value58) < (_Amount57 - _Value58) + _Value58 + _Value58) {
            emit Mint7(_Amount57, _Value58);
        }
    }
}
