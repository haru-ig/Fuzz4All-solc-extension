pragma solidity ^0.8.0;
contract Mutator {
}

pragma solidity >= 0.7.0;
contract Mutator {
    mapping(bytes32 => address) public contractAddresses;
    event NewContract(bytes32, address);
}
