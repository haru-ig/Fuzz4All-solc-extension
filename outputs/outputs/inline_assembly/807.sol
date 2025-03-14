pragma solidity ^0.8.0;
contract Mutator {
    struct Counter {
        uint a;
        uint b;
    }

    Counter public constant globalState = Counter(a = 0, b = 0);
    function Increment(uint a, uint b) public {
        if (b == 0) {
              globalState.a = 0;
              globalState.b = 0;
            return;
        } else {
          globalState.a = globalState.a + 1;
          globalState.b = globalState.a >> 8;
        }
        globalState.b = globalState.b + 1;
    }
}
