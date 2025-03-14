pragma solidity ^0.8.0;
contract Mutate101{
    uint public _1;
    uint public _2;
    constructor() public{

        uint s = (_1 << 128) >> 128;
        _2 = s;

    }
    modifier onlyAdd {

      _2 += 2;
        _1 += 1;
      _;
    }
}

pragma solidity ^0.8.0;
contract Mutate102{
    uint public _1;
    uint public _2;
    uint public _3;
    constructor() public{
      _1 = 0;
        uint s = (_1 << 128) >> 128;
    }
    modifier onlyAdd {
      _1 += 1;
      _2 += 2;
      _3 += 3;
      _;
    }
}

pragma solidity ^0.8.0;
contract Mutate103{
    uint public _1;
    uint public _2;
    uint public _3;
    uint public _40;
    uint public _48;
    uint public _56;
    uint public _64;
    uint public _72;
    uint public _80;
    uint public _88;
    uint public _96;
    uint public _104;
    uint public _112;
    uint public _120;
    uint public _128;
    uint public _136;
    uint public _144;
    uint public _152;
    uint public _160;
    uint public _168;
    uint public _176;
    uint public _184;
    uint public _192;
    uint public _200;
    uint public _208;
    uint public _216;
    uint public _224;
    uint public _232;
    uint public _240;
    uint public _248;
    uint public _256;
    uint public _264;
    uint public _272;
    uint public _280;
    uint public _288;
    uint public _296;
    uint public _304;
    uint public _312;
    uint public _320;
    uint public _328;
    uint public _336;
    uint public _344;
    uint public _352;
    uint public _360;
    uint public _368;
    uint public _376;
    uint public _384;
    uint public _392;
    uint public _
