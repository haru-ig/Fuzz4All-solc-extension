pragma solidity ^0.8.0;
contract Old {
    function old_(uint a) public pure returns(uint b) {
        return 2*a;
    }
}


pragma solidity ^0.8.0;
contract New {
    function new_(uint a) public pure returns(uint b) {
        b = 2*a;
    }
}
