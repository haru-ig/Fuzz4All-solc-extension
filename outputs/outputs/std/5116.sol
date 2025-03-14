pragma solidity ^0.8.0;
contract Semantics {
    function f(uint a, uint b, uint c, uint d) public pure {
        uint memory y;
        return;
    }
    function f2(address, uint) public pure {
        uint[] memory x;
    }

}
contract Mutations {
    function f(uint a, uint b, uint c, uint d) public pure {
    }
    function f2(address, uint) public pure {
    }
}
