pragma solidity ^0.8.0;
contract C {
    uint256 a;
    mapping(uint256 => uint256) b;

    function c() public {
        a = 1000;
        (uint256 c, ) = b;
        assert(c == 1);
        b[a] = 2;
    }
}

pragma solidity ^0.8.0;
contract C {
    uint256 d, e, f, g, h;
    mapping(uint256 => uint256) i;
    mapping(address => uint256) j;
    mapping(string => bytes32) k;

    function c() public {
        d = 1000; b[addr(this).balance] = d;
        e = 10;        i[e]                  = d;
        i[uint256(e)]          = d;
        i[uint256(keccak256(abi.encode(d, e, f, g, h)))] = d;
        f = 1001; (uint256 g, )    = b;
        assert (g == 1001);
        i[f]         = d;
        i[uint256(f)] = d;
        i[uint256(keccak256(abi.encode(d, e, f, g, h)))] = d;
        h = 100;
        (bytes32 z0, ) = i;
        assert(z0 == keccak256(''));
        (uint256 z1, ) = i;
        assert(z1 == d);
    }


        address payable payable1;
}
