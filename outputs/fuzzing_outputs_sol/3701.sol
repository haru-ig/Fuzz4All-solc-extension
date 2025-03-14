pragma solidity ^0.8.0;
contract Example8 {
    function example8() public pure {
        uint x;
        x = Example6NoMod.add(2, 3);
        x = add8And9Plus(x);
        x = add8And9Plus(x);
        x = Example7.add10And11Plus(x, 9);
        x = add12To13Plus(x);
    }
}
