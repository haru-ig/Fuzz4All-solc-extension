pragma solidity ^0.8.0;
contract EquivalentABIv1SemanticsAreMutatedWithoutEventMutating {
    uint constant public _Amount59 = 535860157306997486331927576123922;
    uint constant public _Value60 = 12345;
    event Mint6 (uint amount, uint value);
    function test()public{
        if ((_Amount59 + _Value60) < (_Amount59 - _Value60) + _Value60 + _Value60)
            Mint6(_Amount59, _Value60);
    }
}
contract EquivalentABIv1SemanticsAreMutatedWithEventMutating {
    uint constant public _Amount61 = 535860157306997486331927576123922;
    uint constant public _Value62 = 12345;
    event Mint6 (uint amount, uint value);
    constructor()public{
        try Mint6(_Amount61, _Value62) {}
        catch () {
        }
    }
}
