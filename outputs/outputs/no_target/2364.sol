pragma solidity ^0.8.0;
contract mutation_0c
{
}
contract mutations
{
    struct Test {
        address to;
        uint x;
        uint y;
    }

    event Moved (address to, uint x, uint y);

    Test t1;
    address[] a;
    mapping(address => uint) b;
    uint[][] a_1;
    uint[][][] a_2;
    address m;

    function update(uint x, uint y, address _m) external {
        b[_m] = x;
        t1.to = _m;
        emit Moved(t1.to, x, y);
    }

    function update1(uint x, uint y) internal {
        b[m] = x;
        a[3] = x;
        b[a_1[0]] = x;
        a_1[0][2] = x;
        a_2[0][0][a_1[4]] = x;
        emit Moved(t1.to, x, y);
    }

    function update2() internal {
        a[1] = t1.to;
        b[1] = x;
        b[a_2[2]] = x;
        emit Moved(13, x);
    }
}
