pragma solidity ^0.8.0;
contract Contract2 {
        IImmutable immutable;
        function getAddress() public view returns (address) {
                return immutable.addressFrom();
        }
}

```
