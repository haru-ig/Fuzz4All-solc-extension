pragma solidity ^0.8.0;
contract Test90007Mutator {
    uint256 [] m1;
    uint256 [] m2;
    uint256 n2;
    uint256 n1;
    constructor () public {
        n1 = n1.add(5);
        n2 += 3.14;
        m1 = [n1];
        m2 = [b1, b1];
        m1[0] = a1[0];
        m2[0] = a2[0];
        m2[0] -= 10+m2[0];
        m1[0] -= 100;
        b1 = b1.sub(10);
        b2 = b2.sub(10);
        b1 *= 2;
        a1[1] *= 3;
        b1 = b2;
        a2[1] += a2[0];
        a2[1] += a2[0];
        a2 >>= 1;
        a2 >>= 1;
        uint256 b = b1; b1 = 0; uint256 a = a1; a1 = b; b2 = 0; uint256 [] memory c = c1; c1 = a; a2 <<= 1; b2 = 0;
    }
    fallback () external {
    }
    event Mutate ();
}
