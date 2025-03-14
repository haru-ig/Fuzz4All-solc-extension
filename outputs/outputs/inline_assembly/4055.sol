pragma solidity ^0.8.0;
contract SemanticsEquivalence24xCrossEquivalence225 {
        function bar() public pure {
            uint rX1; uint16 rX2; assembly {
                x := 1;
                r := 1 + x
                rX1 := add(r, x)
                rX2 := sub(r, x)
            }
            x = 2;
            rX1 = add(rX1, x);
            rX2 = sub(rX2, x);
        }
        uint constant x = 2;
}
