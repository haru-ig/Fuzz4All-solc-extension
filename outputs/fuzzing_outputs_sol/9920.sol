pragma solidity ^0.8.0;
contract Old {
    fallback function old_(uint a) public pure returns(uint b) {
        return 2*a;
    }
}
contract New {
    fallback function new_(uint a) public pure returns(uint b) {
        b = 2*a;
    }
}
