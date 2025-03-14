pragma solidity ^0.8.0;
contract Mutate {
    function mutateArray(uint32[] memory b) public pure {
        b.push(a.length);
        require(a.length < uint32(-1));
    }
}
