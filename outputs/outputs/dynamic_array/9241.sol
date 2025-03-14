pragma solidity ^0.8.0;
contract semanticEquivalentMutation5 {
    use semanticEquivalentMutation4;
    constructor() {
        semanticEquivalent(ArrayMutability(a:=1,b:=2));
    }
    function semanticEquivalent(ArrayMutability memory A)
    public
    pure
    returns (uint)
    {
        A.array[0] = 10;
        uint a;
    }
}
