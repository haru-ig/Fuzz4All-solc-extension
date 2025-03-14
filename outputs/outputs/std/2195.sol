pragma solidity ^0.8.0;




pragma solidity >=0.8.0;
struct Address {
    address addr;
    mapping(address => bool) isDelegate;
}
pragma solidity 0.8.5;
contract MutatedAddress {
    address foo;
    constructor() {
        foo = address(0xBAADF00d40FCE6B4BAF90A0B29ECACFDACEB45DB);
    }
    function test() public view returns (bool) {
        return foo == address(0xBAADF00d40FCE6B4BAF90A0B29ECACFDACEB45DB);
    }
}

pragma solidity >=0.8.0;
contract ContractWithConstructor {
    constructor() {
        int x = 0;
        x = 2;
    }
}
