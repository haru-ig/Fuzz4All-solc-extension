pragma solidity ^0.8.0;
contract TestMutated801 {
    function mul(uint x, uint y) public pure returns (uint) {
        uint z = x > 1? 1 : 0;
        uint z1 = mul(z1, x);
        z = z > 0? z1 : z;
        return z;
    }
    function div(uint x, uint y) public pure returns (uint) {
        uint z1 = div(1, x);
        uint z2 = div(y, x);
        z = z1 > x? z1 : z2;
    }
}

pragma solidity ^0.8.0;
contract TestMutated802 {
    uint x = 0;
    function mul(uint x, uint y) public pure returns (uint) {
        uint z = x > 1? 1 : 0;
        uint z2 = mul(z, x);
        z = z > 0? z2 : z;
        return z;
    }
    function div(uint x, uint y) public pure returns (uint) {
        uint z2 = div(y, x);
        z = z2 > x? y : z2;
    }
}
pragma solidity ^0.4.21;
contract Example {
    function f(uint x) internal view returns (uint) {
        if (x < 10) return x + 2;
        return x / 10;
    }
    function f2() public view returns (uint) {
        var h = f(10);
    }
}
