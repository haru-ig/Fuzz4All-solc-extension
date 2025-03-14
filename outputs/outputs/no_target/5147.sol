pragma solidity ^0.8.0;
contract SimpleExample_private_constructor {
    uint256 public counter;
    function foo() pure public returns(uint256) {
        return counter;
    }
}

pragma solidity ^0.8.0;
contract SimpleExample2_private_constructor {
    uint8 public counter;
    function foo() pure public returns(uint8) {
        return counter;
    }
}
contract SimpleExample {
    function foo() pure public returns(address) {
        return address(0x000);
    }
}
