pragma solidity ^0.8.0;
contract Solidity {
    function example() public pure returns(bool) {
        return true;
    }
}
contract MultipleMutatedExamples {
    function example() public {
        MutatedExample e;
        MutatedExample2 m;
        e.setValue(0);
        m.setValue(0);

        assert(e.getValue() == 0 && m.getValue() == 0);
    }
}
