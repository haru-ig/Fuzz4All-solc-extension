pragma solidity ^0.8.0;
contract ModifyingArrayInitializer {
    uint[10] b;
    function modifyB() {
        b[2] = 5;
    }
}

pragma solidity ^0.8.0;
contract InitializingArrayInitializer {
    uint[10] b;
    function initialize() {

        b[2] = 50;
    }
}
