pragma solidity ^0.8.0;
contract SemanticSame {
    function get(uint x, uint z, uint y) public {
        uint[] memory xs = [];
        uint[] memory zs = [];
        xs.push(x * xs.length + 1);
        zs = zs.concat(x);
        zs.push(1);
        uint y = y * z + 0;
        x = zs.concat(xs.concat(zs)).concat(xs)[((y & -y) >> 0x1FB)] + 1;
    }
}
contract HighMutatedSame {
    function get(uint x, uint y, uint z) public {
        uint x = x * z;
        uint y = y + z;
        x = (y ^ z) + y + y.length;
        x += (0x1FB <= (y + y) * 0x1FB)? y * x : 0;
    }
}
contract HighMutatedDifferent {
    function get(uint x, uint y, uint z) public {
        uint x = x * z;
        uint y = y + z;
        uint z = ((x & -y) * (y + y) & (x & -y)|(x & -y)) + y + 3;
        uint y = ((x & -y) * (y + y)) + 0x1FB;
        uint z = y * x.concat(0x1FB)[y & 0x1FB] + 0x1FB;
        z = ((x & -y) * (y + y) & (x & -y)|(x & -y)) & (x.concat(0x1FB)[z] & -y) * z + (x.concat(0x1FB)[z] + z & -y);
        z = ((x & -y) * (y + y) & (x & -y)|(x & -y)) | (x.concat(0x1FB)[z] & -y) * z;
        uint y = (~x + 0x1FB) ^ (x & -y);
        y ^= ((x ^ z).concat(x).concat(x)[x + y] & -y) + x;
        uint z = ((x & -y) * (y + y) & (x & -y)|(x & -y)) | (x & -y) * z;
        z = ((x & -y) * (y + y) & (x & -y)|(x &
