pragma solidity ^0.8.0;
contract C {
    I private i;


    constructor () {
        i = I(0xabc);
    }
}

pragma solidity ^0.8.0;
contract CNoStorage {
    I private i;
    constructor () {
        i = I(0xabc);
    }
}
