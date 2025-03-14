pragma solidity ^0.8.0;
contract CompileFailureModifier {

    struct State {
        bool state;
    }

    function testState() constant returns (State memory s) {

        require(block.timestamp > 0, "Block timestamp is 0");

        State memory state;
        state.state = block.timestamp <= 1e18;
        return state;
    }
}
