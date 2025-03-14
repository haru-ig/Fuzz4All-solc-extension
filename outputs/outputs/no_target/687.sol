pragma solidity ^0.8.0;
contract Foo {



    function add() public pure {
        uint i;
        unchecked {

            i = 1;
        }
        for (i; i < 100000000000; i = i + 2) {

            i = i + 1;
        }
    }

    function mul() public pure {
        uint i;
        unchecked {
            i = 1;
        }
        for (i; i < 100000000000; i = i + 2) {
            unchecked {
                i = i + 1;
            }

            i = i + 1;
        }
    }
}



contract Foo {



    function add() public pure {
        unchecked {
            require(true);
        }
        uint i;
        for (i; i < 100000000000; i = i + 2) {
            unchecked {
                require(true);
            }

            i = i + 1;
        }
    }

    function mul() public pure {
        unchecked {
            require(true);
        }
        uint i;
        for (i; i < 100000000000; i = i + 2) {
            unchecked {
                require(
