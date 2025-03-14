pragma solidity ^0.8.0;
contract Mutant2FallbackFunction {
    event MutantAdded(address target);

    function mutantSetFallbackFunction() public pure returns (uint) {
        Mutant1FallbackFunction1 b = new Mutant1FallbackFunction1();
        Mutant1FallbackFunction1 c = b;
        Mutant3FallbackFunction3 d = new Mutant3FallbackFunction3();
        Mutant3FallbackFunction3 e = d;

        Mutant2FallbackFunction1 f = b;
        Mutant2FallbackFunction1 g = b;

        Mutant1FallbackFunction1 h = new Mutant1FallbackFunction1();
        Mutant1FallbackFunction1 i = h;

        Mutant1FallbackFunction1 j = new Mutant1FallbackFunction1();
        Mutant1FallbackFunction1 k = new Mutant1FallbackFunction1();
        Mutant1FallbackFunction1 l = k;

        Mutant2FallbackFunction1 m = new Mutant2FallbackFunction1();
        Mutant2FallbackFunction1 n = new Mutant2FallbackFunction1();

        Mutant2FallbackFunction1 o = g;
        Mutant2FallbackFunction1 p = o;

        Mutant2FallbackFunction1 q = i;
        Mutant2FallbackFunction1 r = q;

        Mutant3FallbackFunction3 s = new Mutant3FallbackFunction3();
        Mutant2FallbackFunction3 t = s;
        Mutant2FallbackFunction3 u = t;

        Mutant2FallbackFunction1 v = f;
        Mutant2FallbackFunction1 w = v;

        emit MutantAdded(address(mutantSetFallbackFunction));
        return 2 ** 20;
    }
}
contract Mutant3FallbackFunction3 {
    function mutantSetFallbackFunction() public pure returns (uint) {
        return 2;
    }
}
