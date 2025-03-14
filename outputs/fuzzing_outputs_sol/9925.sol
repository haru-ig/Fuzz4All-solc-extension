pragma solidity ^0.8.0;
contract Old {
    function old_(uint a) public pure returns(uint b) {


        return old_(2*a);
    }
}
contract New {
    function new_(uint a) public pure returns(uint b) {


        return new_(2*a);
    }
}
