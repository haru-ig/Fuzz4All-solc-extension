pragma solidity ^0.8.0;
contract G {
    uint private constant value = 1;
    uint public constant b = 2;
    uint constant constantMax = 2**128;
}

pragma solidity ^0.8.0;
contract H {
    uint private constant value = 1;
    uint constant constantMax = 2**128-1;
}
