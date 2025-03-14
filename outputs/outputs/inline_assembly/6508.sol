pragma solidity ^0.8.0;
contract MixedContactsExample77 {
    uint public c;
    fallback () external { c = 1; }
}

pragma solidity ^0.7.4;
import "./MixedContactsExample77.sol";
contract MixedContactsExample78 {
    uint public a;
    uint public b;
    fallback () external { a = bytes(1).length; b = bytes(2).length; }
    receive () external payable { require(false); }
}
contract MixedContactsExample98 {
    uint a;
    uint b;
    constructor(uint8 _b) public {
        require(_b == 8, "Incorrect b value");
    }
    fallback () external { a = 5; b = 6; }
}
contract MixedContactsExample109 {
    uint256 a;
    uint256 b;
    constructor(uint256 _b) public {
        require(_b == 8, "Incorrect b value");
    }
    receive () external payable { require(false); }
    fallback () external { a = ilog2(13); b = ilog2((26 ** (5021 + 1))); }
}
contract MixedContactsExample119 {
    uint4 a;
    uint4 b;
    constructor () public { }
    receive () external payable { require(false); }
    fallback () external { a = ilog2(8); b = ilog2(16); }
}
contract MixedContactsExample131 {
    uint8 a;
    uint8 b;
    uint8 c;
    uint8 d;
    uint8 e;
    uint8 f;
    constructor() public { }
    receive () external payable { require(false); }
    fallback () external { a = ilog2(64); b = ilog2(256); c = ilog2(128); d = 8192; e = 8192; f = ilog2(1); }
}<fim_middle>pragma experimental ABIEncoderV2;
contract MixedContactsExample89 {
    uint _a;
    uint4 _b;
    uint4 _c;
    uint _d;
    uint4 _e;
    uint _f;
    uint4 _g;
    uint _h;
    uint4 _i;
    uint _j;
    uint _k;
    uint _l;
    uint4 _m;
    uint _n;
    uint4 _o;
    uint _p;
    uint256 _q;
    uint128 _
