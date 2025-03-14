pragma solidity ^0.8.0;
contract Mutator4 {
    constructor (uint256 _value, uint128 _d) public {
        revert("No fallback is defined.");
    }
}

pragma solidity ^0.8.0;
contract CallMutators {
    uint256 public value1;
    uint256 public value2;
    uint256 public value3;
    uint256 public value4;
    uint256 public value5;

    constructor () {
        Mutator2 mutator1 = Mutator2(new Mutator2());
        Mutator2 mutator2 = Mutator2(new Mutator2());

        Reverter2 reverter1 = Reverter2();
        Reverter2 reverter2 = Reverter2();

        Mutator4 mutator3 = Mutator4(512);
        Mutator4 mutator4 = Mutator4(512, 1048576);

        reverter1.revertedFallback();
        mutator1.payWithFallback(address(mutator2));

        mutator3.payWithFallback(address(mutator4));


        (value1, value2, value3, value4, value5) = ( Mutator2(new Mutator2()), new Mutator2(), reverter2, mutator4, 42);
    }
}
