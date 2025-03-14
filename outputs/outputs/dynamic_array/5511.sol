pragma solidity ^0.8.0;

contract C {
    uint8 a;
    uint8 b;
    uint16 c;
    uint16 d;
    uint64 e;
    uint64 f;
    int8 g;
    int8 h;
    int16 i;
    int16 j;
    int32 k;
    int32 l;
    int64 m;
    int64 n;
    function () public pure {
        a = 1;
        b = 2;
        c = 3;
        d = 4;
        e = 5;
        f = 6;
        g = -16;
        h = -15;
        i = -112;
        j = -111;
        k = -4294967294;
        l = -4294967307;
        m = -9223372036854775808;
        n = -9223372036854775810;
    }
}
import "./C.sol";
contract B {
    C d;
    uint256 a;
    function test() public {
        d.a = 1;
        assertEq(d.a, 1, "bad a");
        assertEq(d.d(a), 16, "bad b");
    }
}







pragma solidity ^0.8.0;



library EnumerableMap {
