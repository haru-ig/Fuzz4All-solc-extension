pragma solidity ^0.8.0;
contract SemanticDifferent1 {
    enum State {

        Fallback
    }
    State private immutable state;
    modifier f {
        require(state!= State.Fallback,
            "The fallback function can be called only once per contract instance");
        state = State.Fallback;
        _;
        state = State.Fallback;
    }
    function mutate() public f {}
}
