pragma solidity ^0.8.0;
contract MutatedEquivalentSolidity {
    bytes32 constant MYADDRESS = 0x5BEe24c2e8E1E2Ab77fe51D802f051A21FCF12B6;
    function x() public pure {
        uint x;
        (bool success, ) = MYADDRESS.call{value: 50000000000}(new bytes(bytes(44).length));
    uint y;
  }
}
