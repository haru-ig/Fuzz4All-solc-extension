pragma solidity ^0.8.0;
contract Test {
    struct S {
        uint256 count;
        uint256 total;
        uint256 total2;
    }
    uint256[] public a;
    S public s = S({ count: 0, total: 0, total2: 0 });
    function set(uint count, uint256 total, uint256 total2) public {
        s.count = count;
        s.total = total;
        s.total2 = total2;
        s.a[1] = count;
        s.a[2] = 4;
    }
    function get(uint count, uint256 total, uint256 total2) public {
        s.count = count;
        s.total = total;
        s.total2 = total2;
    }
}
contract Test {
    struct S {
        uint256 count;
        uint256 total;
        uint256 total2;
        uint256[] a;
    }
    uint256[] public b;
    uint256[] public a;
    S public s = S({ count: 0, total: 0, total2: 0, a: a });
    function test() public {
        a[0] = 1;
        a[1] = 2;
        a[32] = 42;
        assert(s.a[0] == 1 && a[1] == 2 && a[0]!=a[1]);
        s.a[42] = 99;
        s.a[52] = 111;
        assert(s.a[0] == 1 && s.a[42] == 99);
        s.a[1] = 55;
        s.a[2] = 66;
        assert(a[0] == 55 && a[2] == 66 && a[32]!= 4 && s.a[0]!= a[2]);
    }
}
