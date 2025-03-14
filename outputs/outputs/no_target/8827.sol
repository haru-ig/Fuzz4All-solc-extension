pragma solidity ^0.8.0;
contract EquivalentABIv2SemanticsAreMutated {
    uint constant public _Amount57 = 58136567327726728785964665715004;
    uint constant public _Value58 = 12121;
    string constant public ABS_TOKEN_ADDRESS = "0xBEEFbeefBEEFBEEFbeefBEEFbeefBEEFBEEFbeefBEEFFF" ;

    uint constant public _Amount59 = 581365097164603054824035446172815;
    uint constant public _Value60 = 12222;
    string constant public ABS_TOKEN_ADDRESS2 = "0xBF0B0BFB0BF0BFB0BFB0BFB0BFB0BFB0Bfff" ;

    event Mint7 (uint amount, uint value);
    function test () public {
        if (ABS_TOKEN_ADDRESS == ABS_TOKEN_ADDRESS2) {
            if ((_Amount57 + _Value58) < (_Amount57 - _Value58) + _Value58 + _Value58) {
                emit Mint7(_Amount57, _Value58);
            }
        }
    }
}
