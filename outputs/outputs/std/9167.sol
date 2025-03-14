pragma solidity ^0.8.0;
contract Mutator {
    uint constant MAX = 50000000;
    uint256 i = MAX;

    function update(uint i) public {
        if(i>=MAX){
            i = i - MAX;
            emit Update(i);
        }
    }

    event Update(uint x);
}
