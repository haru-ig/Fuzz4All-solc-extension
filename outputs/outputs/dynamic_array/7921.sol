pragma solidity ^0.8.0;
contract Test27 {
    address[] public addresses;
    function f() public {
        if (addresses.length > 0) {
            delete addresses[0];
        }
    }
}

pragma solidity ^0.8.0;
contract Test27 {
    int[] public storage;
    function f() public {
        storage[1] = 42;
    }
}
