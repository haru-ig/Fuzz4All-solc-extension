pragma solidity ^0.8.0;
contract Test {
    uint[10] public test;
}

pragma solidity ^0.8.0;
contract Test is Test {
    uint test;
}
