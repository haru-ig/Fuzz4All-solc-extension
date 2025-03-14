pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample88SemialgebraicEquiv2 {
    uint256 public Counter;

    constructor() {
        Counter = 0;
    }

    function add(   ) pure public {
        Counter += 1;
    }

    function increment(   ) public {
        Counter += 1;
    }

    function test(   ) public {
        Counter++;
        if (true) {
            Counter++;
        } else if (false) {
            Counter++;
        } else {
            Counter++;
            add();
            increment();
        }
    }

}
