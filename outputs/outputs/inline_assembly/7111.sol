pragma solidity ^0.8.0;
address contractWithRevert() {
    uint public x;

    function __revert() public pure {
        revert();
    }

    function set(uint _x) public pure {
        x = _x;
    }

    function __mutate(uint _x) public pure {
        revert();
    }

    function revertFromRevert( ) public {
        x = x;
        __mutate( );
    }
}
