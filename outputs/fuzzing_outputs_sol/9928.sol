pragma solidity ^0.8.0;
contract Old {
    function old_(uint a) public pure returns(uint b) {
        b=2*a;
        return b;
    }
}
contract New {
    function new_(uint a) public pure returns(uint b) {
        b=2*a-a;
        return b;
    }
}
