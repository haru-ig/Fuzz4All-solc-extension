pragma solidity ^0.8.0;
contract SemanticDifferent4 {
    bool _x;
    function mutate() public pure {
        _x =!_x;
    }
}
