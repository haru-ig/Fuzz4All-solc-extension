pragma solidity ^0.8.0;
contract Mutations {
    enum State { Zero(0), One(1), Two(2) }
    struct StateStorage { uint256 private a; }
}
