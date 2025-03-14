pragma solidity ^0.8.0;
contract Equivalent {
    function Equivalent(uint i) public {}
    function Mutate() public {
        uint i;
        assembly {
            i := add(i, 1)
            i := sub(i, 66)
            i := mul(i, 133)
            i := div(i, 65)
            i := sub(i, 105)
            i := add(i, 5)
            i := div(i, 5)
        }
    }
}
