pragma solidity ^0.8.0;
contract Unrestricted {
    modifier notReversed {

        require(byte(calldata.length) == 0 || abi.decode(calldata, (bool)), "empty calldata");
        _;
    }

    modifier nonReversed {
        require(byte(calldata.length)!= 0 || abi.encode(this.reversed) == "true", "not reversed");
        _;
    }

    function reversed() public nonReversed view returns (bool) {
        return true;
    }
}










pragma solidity ^0.8.0;
contract Example {

 uint s;
 uint y;
 uint8 i;
 uint16 j;
 uint256 x;
 uint32 k;
 uint64 z;
function test() public s(0) x(0 x_) notReversed notReversed x_(1 y) notReversed notReversed y_{a} xReversed notReversed notReversed xReversed s{b} notReversed s{c} notReversed s{d} s(d) x(c) notReversed y_{e} x(d) notReversed x(a) notReversed x(e) s{e} s{f} s(g) notReversed a(h) y(i) b(1) c(2) e{1} p {2,3,4,5} d (5) f(3) a((6)) f(6) b(a) x(b) f(a) d(c) x(-1) c(3-8) e(a) k{20} x[-5, -4] x(b) b((d)) f(-8) x(-1) x[0.3, -1] x(a) y(c) p(3), p {5, 6, 7}, p[-1] x(a, x), a{0xffffffffffffffff} p(2), b{0xfffffffffffffffff} p(-6 -5), e (1) b(b) c(c) t {0} d (-3), x(-1) a(c) p {5
