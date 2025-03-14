pragma solidity ^0.8.0;
contract Test {
    uint public test;
    function test() {
        test += 1;
    }
}

pragma solidity ^0.8.0;
contract Test {
    uint public test;
    function test() {
        test += test;
    }
}
