pragma solidity ^0.8.0;
contract Mutator {
    function testMethod(int _v, bytes memory _bytes) public pure {
        _v = _v + 1;
        _bytes[9] = uint8(324);
    }
}
