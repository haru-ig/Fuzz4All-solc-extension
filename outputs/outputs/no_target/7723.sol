pragma solidity ^0.8.0;
contract Foo {
    uint public constant y_;
    function barmut() public pure {
        bool x = true;
        x = y_;
    }

    modifier noZero(uint z_) {
        require(z_!= 0);
        _;
    }
}
