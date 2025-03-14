pragma solidity ^0.8.0;
contract Mutated20{
    function mutated16(uint[] memory a) public pure returns (uint) {
        int l = a.length;
        uint[256] memory t = new uint[](4096);
        assembly {
			mstore(0x40, t)
            for { t.length } lt(l) { mstore(add(t, 16), a[lt]) }
            return(0)
        }

    }
}
contract Mutated32{
    uint[256] memory p;
    uint[256][256] memory q;

    function functionName(uint[] memory _p) public {
        uint[256] memory _n;
        uint[256][256] memory _q;
        uint[256] memory _m;
        uint[4096] memory z;
        uint[256] memory x;
        for (uint i = 0; i < _p.length; ++i){
            _n[0] = _p[i];
            uint _w = _n[0];
            uint _k;
            uint k = _w.length;
            for (uint l = 0; l < _w.length; ++l)
                if (_w[k-l-1] < 10*6) {
                    _k = k - l - 1;
                    l = _k;
                    k = _k;
                } else x.push(_w[k--]);
            for (uint j = 0; j < _p.length; ++j) {
                uint z;
                uint y = _p[j];
                for (uint z1 = 0; z1 < _n[0]; ++z1)
                    q[z+1][y+z1]++;
            }
            for (uint j = 0; j < _n.length; ++j) q[j][0]++;
        }

        for (uint j = 0; j < _p.length; j++) {
            z[0] = 10*_p[j];
            uint _x = 10*_p[j];
            x[_x - 1] = _x;
        }

        uint sum;
        for (uint j = 0; j < _p.length; j++) {
            uint _z = _n[0];
            for (uint t = 1; t < x[_p[j]-1]; ++t) {
                sum += q[_z+1][t];
                ++z[_z];
            }
            sum += q[0][t];
            for (uint m = 0; m < j; ++m) {
                p[m] = sum + p[m];
                sum -= p[m];
            }
            if (x[_p[j]-1] > 2) continue;
            uint d = z[_n[0]];
            for (uint m = 0; m < j; ++m) {
                if (d < 10*_p[m]) {
                    for (uint n = 0; n
