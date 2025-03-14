pragma solidity ^0.8.0;
contract Arrays {
    uint256[] public a;
    uint256[] public c;
}

contract Arrays {
    function test(Arrays memory f) public {
        a[0] = 1;
        a[1] = 2;
        a[2] = 3;
        a[3] = 4;
        c[0] = 1;
        c[1] = 2;
        c[2] = 3;
        c[3] = 4;
        f.a = a;
        f.c = c;
        assert(f.a.length == 4);
        assert(f.c.length == 4);
        assert(a[0] == 1);
        assert(a[1] == 2);
        assert(a[2] == 3);
        assert(a[3] == 4);
        assert(c[0] == 1);
        assert(c[1] == 2);
        assert(c[2] == 3);
        assert(c[3] == 4);
    }
}

pragma solidity ^0.8.0;
contract Arrays {
    uint[] a;
    uint32[] b;
    function test(uint[] memory b, uint32[] memory b_) public {
        uint32[] memory b2 = new uint32[](b.length + 2);
        b2 = addElements(b, b2);
        b2[b.length] = b_[0];
        b2[b.length + 1] = b_[1];
        b = b2;
        assert(b.length == 5);
    }
    function addElements(uint[] memory a, uint[] memory target) private pure returns (uint[]) {
        target = a;
        target.length += 2;
        return target;
    }
}

contract Arrays {
    function test() public {
        uint[] memory a = new uint[](3);
        a = addElements(a, uint[](2));
        a[a.length] = 1;
        a[a.length + 1] = 2;
        assert(a.length == 3);

        uint32[] memory b = new uint32[](3);
        b = addElements(b, uint32[](2));
        b[b.length] = 1;
        b[b.length + 1] = 2;
        assert(b.length == 3);
