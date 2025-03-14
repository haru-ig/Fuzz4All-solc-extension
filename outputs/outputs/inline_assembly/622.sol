pragma solidity ^0.8.0;
contract Complex{
    function anotherMethod() public pure {
        assembly{
            a := 3
            b := mul(a, a)
            b := add(0x0, b)
            m := lt(b, 10)
            a := and(a, or(0x0, m))
            a := bsclt(a, 10)
            a := div(a, b)
            m := eq(a, b)
            a := asdiff(a, b)
            b := and(b, and(m, not(a)))
            a := amin(a, b, 0x0)
            a := amax(a, b, 0x0)
            a := asl(a)
            a := asr(a)
            m := ceq(b, 0x0)
            a := cand(0x0, ceq(a, b))
            a := cand(0x0, ceq(b, 0x0))
            a := cand(b, ceq(b, 0x0))
            a := cand(b, ceq(a, b))
            a := cand(0x0, ceq(a, 0x0))
            a := cand(a, b)
            a := cadd(a, b)
            m := eq(a, 1)
            a := sub(3, b)
            a := bscsub(b, a, 0x0)
        }
    }
}*/
