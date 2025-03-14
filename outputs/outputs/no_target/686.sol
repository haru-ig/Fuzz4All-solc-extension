pragma solidity ^0.8.0;
contract MutatedGenerator1 {
    function g1() internal view returns(uint) {
        uint x = 0x0b;
        uint y = (0x0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
        y *= x;
        uint z = x + y;
        y *= x;
        x *= x;
        if (x == 2 ** 28) {
            return z;
        }
        assert(x!= -1 && x!= 0 && x!= -2 && x!= y && x!= ~y && x!= ~z && x!= z && x!= ~(x + 1) && x!= ~0x0b);
        return x + (x + 2 ** 28);
    }
}
pragma solidity ^0.8.0;
contract MutatedGenerator2 {
    pragma gas 7500000000;
    type Generator1 is MutatedGenerator1;






    function g2(Generator1 internal generator) internal pure returns(-1
