pragma solidity ^0.8.0;
contract m01 is m02{
    uint256 constant public D = 0x0123456789;
    uint256 constant public Y = D - (S>N? 1 : 0);
    uint256 constant public Z = D + (S>N? 0 : 1);
    uint256 constant public W = S - (T>N? 1 : 0);
    uint256 constant public X = S + (T>N? 0 : 1);
}

pragma solidity ^0.8.0;

contract m00 {

    uint256 constant pub M = 0x11;
    uint256 constant pub N = 0xabcdef;
    uint256 constant pub S = 0xabcdef;
    uint256 constant pub T = 0xabcdef;
    uint256 constant pub D0 = 0xabcdef;

    uint256 constant pub Y = D0 -(S>N? 1 : 0);
    uint256 constant pub Z = D0 + (S>N? 0 : 1);
    uint256 constant pub W = S - (T>N? 1 : 0);
    uint256 constant pub X = S + (T>N? 0 : 1);
    uint256 constant pub Y2 = S << 32;
    uint255 const pub X2 = 0;

    bool constant pub B = (X==N);
    bool constant pub B2 = (X==N-M);
    bool constant pub B3 = (X==S-M);
    bool constant pub B4 = (X==S-1);
    bool constant pub B5 = (X==S);
    bool constant pub B6 = (X==T-M);
}
