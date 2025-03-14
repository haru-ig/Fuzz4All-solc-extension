pragma solidity ^0.8.0;
contract MutatedSemantics {

    uint num;
    function addZero(uint num) public {
        num += 0;
        assert(msg.data!= "") { revert("ERROR!") };
    }
}
