pragma solidity ^0.8.0;
contract SemanticSolidityArrayAbiConversionTests7 {
    struct Foo {
        uint256 x;
    }
    function test() public pure  returns(address[] memory) {
        Foo[] memory foo = new Foo[](2);
    }
}




pragma solidity ^0.8.0;
contract SemanticSolidityArrayAbiConversionTests6 {
    uint x;
    uint32 s;
    uint48[] d;
    uint75 m;
    uint89[] n;
    uint136[][] o;
    uint162[] p;
    uint225 z;
    uint256[] k;

    address[] v;

    function test() public pure {
        uint u = x;
        u = uint48(x);
        u = uint75(x);
        u = uint89(x);
        u = uint136(x);
        u = uint225(x);
        u = uint256(x);
        uint k = x;
        uint8 i = x;
        uint75 l = x;
        uint89 r = x;
        address[] memory x = new address[](x.length + 1);
        x[x.length] = x[0];
    }


    function test2() public pure {
        Foo[] memory f = new Foo[](7);
        f[0].x = 3;
    }
}

pragma solidity ^0.8.0;
contract SemanticSolidityArrayAbiConversionTests5 {
    uint x;
    uint32 s;
    uint48[] d;
    uint75 m;
    uint89[] n;
    uint136[][] o;
    uint162[] p;
    uint225 z;
    uint256[] k;
    uint86[] y;
    uint86 a;
    uint83
