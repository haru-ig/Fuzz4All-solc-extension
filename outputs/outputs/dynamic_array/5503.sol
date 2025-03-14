pragma solidity ^0.8.0;
contract Test59Mutated {
    uint8 public counter = 0;
    struct ComplexTest {
        uint8[2] x;
        uint256 y;
    }
    function() public {
        counter++;
        if (counter < 100)
            test.x[1] = 1;
        else
            test2.x[0] = 1;
    }
}
