pragma solidity ^0.8.0;
contract Mutators09vb_v3_3{
    function equivalent() public {
        emit EquivalentEvent(
            valuevb
        );
    }
    event EquivalentEvent(
        uint _value
    )
        public;
}
