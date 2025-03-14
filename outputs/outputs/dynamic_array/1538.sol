pragma solidity ^0.8.0;
contract SemanticallyEquivalentDynamicArrays {
    uint256[1] y;
    uint256[1] z;
    function f(uint x) public view {
        z[2][1] = x + 1257;
        y[5] = 0xabadbeef;
        y[x] = 1256;
    }
}


pragma solidity ^0.8.0;
contract MemoryLeaks{
    mapping(uint => uint256) a;
    address[] b;
    function f() public {
        uint256 x;
        for (uint i = 0; i <= 5; ++i) {
            a[0] = 0x772cd;
        }
        for (uint i = 4; i > 0; --i) {
            x = a[i];
            a[i] = x + 0x1;
        }
        a[5] = 24977;
        b.push(address(this));
        b.push(address(address(this)));
    }
}


pragma solidity ^0.8.0;
contract ArraysAreObjects {
    struct Test
    {
        uint a;
    }
    Test[] a;
    int256[2000] b;
    function f() public {
        a.push(Test(0xDEADBEEF));
        a.push(Test(0xcafebabe));
        a.push(Test(0xeeeeeeee));
        a.push(Test(0xdbadbeef));
        a.push(Test(0xbabebeef));
        b.push(66);
        b.push(b.length);
    }
}


pragma solidity ^0.8.0;
contract ArraysAreObjectsAgain {
    struct Test
