pragma solidity ^0.8.0;
contract ImmutableStorage {
    address immutable immutableAddress = address(new Immutable());
}
