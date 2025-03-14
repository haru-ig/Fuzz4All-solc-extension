pragma solidity ^0.8.0;
contract MutateArrayC6418 {
    function a() public {
        ArrayMutationsC6418 memory o = ArrayMutationsC6418(new ArrayMutationsC6418());
        o.isA = false;
        ArrayMutationsC6418 memory p = ArrayMutationsC6418(new ArrayMutationsC6418());
        p = o;
        p.isA = true;
        assert(p.x == 1);
    }
}
