pragma solidity ^0.8.0;
contract mutation v2 {
    constructor ()  public {
        uint256 c;
        unchecked {
            uint256 sc = 32;
        }
    }
    function test(uint256 _x_) returns (uint256) {
        uint256 c = _x_;
        unchecked {
            uint256 sc = scall0{value: 0}(f)[1];
        }
        unchecked {
            uint256 sc2 = scall2{value: 1}(g, h)[1];
        }
        unchecked {
            uint256 sc3 = scall3{value: 2}(g, h, 2)[1];
        }
        unchecked {
            c = scall1{value: 3}(f)[3];
        }
        unchecked {
            c = g();
        }
        unchecked {
            while(true);
        }
        return 1;
    }
    function g() private pure returns(uint256) {
        uint256 c;
        while(true) { unchecked { c+= c;} }
    }

}
assert(g() == 104857600);
assert(mutation.test(32) == 4 * 32);
assert(mutation.test(uint256(-1)) == 4);

assert(mutation.test(uint256(Int.minValue)) == 0);
assert(mutation.test(uint256(0)) == 0);
assert(mutation.test(uint256(0xffff+1)) == 65521);
assert(mutation.test(uint256(0x0000ffff)) == 0xffff);
assert(mutation.test(uint256(0xffffffff)) == 0);
assert(mutation.test(uint256(0))) == 0);


/* This contract contains five functions: (a) one that takes an argument, (b) two functions that all are public and call each other, (c) a function that calls the first two functions recursively in a loop, and (d) one that takes an input, and returns a function, returning the result of its evaluation. The
