pragma solidity ^0.8.0;
contract BytesMutated {
    uint public counter;
    function mutatedBytes(uint _length) public {
        counter += uint(_length);
    }
}
