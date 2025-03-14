pragma solidity ^0.8.0;
address a1; address a2;
contract MutatedSemanticallyEquivalentAssemblyExample16 {
  modifier testAddress(address _address) {
    if (_address == address(a1) || _address == address(a2)) {
      _;
    } else {
      assembly {
        sstore(0, _address)
      }
    }
  }

  function main() public {
    a1 = address(this); a2 = address(this);
    testAddress(address(a1)); testAddress(address(a2));
  }
}
