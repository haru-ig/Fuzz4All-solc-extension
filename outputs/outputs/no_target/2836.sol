pragma solidity ^0.8.0;
contract oldStorage {
    uint a = 3;
    uint constant b = a;
}

pragma solidity ^0.8.0;
contract oldStorage {
    uint constant a = 3;
    uint b = a;
}
