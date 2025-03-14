pragma solidity ^0.8.0;
contract Mutator {
    uint internal counter;

    function mutate() public {
        uint value;
        uint prevValue;
        uint diff;
        for (counter = 0; counter < 10; counter++) {
            prevValue = counter;


            value = ((prevValue * prevValue * prevValue) + 1) % 9;
            counter = value;

        }
    }
}
