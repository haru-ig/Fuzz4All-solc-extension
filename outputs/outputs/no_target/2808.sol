pragma solidity ^0.8.0;

contract test160 {
    using old160 for address;

    function a() public pure {
        address a = this.a;
    }

    function a(uint a) public pure {
        address a = this.a;
    }

    function b() public pure {
        address a;
        bool a = 1 > 2;
        if (a == 1) {
            uint a = 1 > 2;
            address a = this.a;
        }
    }
}
