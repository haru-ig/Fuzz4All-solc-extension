pragma solidity ^0.8.0;
contract New {
    function get(uint a,uint b) public returns (uint) {
        unchecked {
            return (cast(a)/cast(2));
        }
    }
}
