pragma solidity ^0.8.0;
contract EquivalentSolidity {
    uint x;
    function x() public pure returns (uint) {
        x = x + 150000;
        return x;
    }
    function y() public pure returns (uint) {
        x = x + 150000;
        return x;
    }
    constructor () {
        emit EmitEvent(1);
    }
    modifier EmitEvent { uint x;
        function EmitEvent() public pure { uint x; }
    }
}
