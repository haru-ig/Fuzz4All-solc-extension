pragma solidity ^0.8.0;
contract C {

    constructor () public {}


    modifier only_msg_sender {
        assert(msg.sender == a && i > 0);
        _;
    }


    function test_overflow() public returns (uint) {
        unchecked {
            i += 1;
            i--;
        }
        return s;
    }


    function test_underflow() public returns (uint) {
        unchecked {
            _;
        }
        return s;
    }


    address public a;


    uint public i;


    function approve(address to, uint value) public {
        require(to == a);
        require(a0 == to || to == a1);
        assert(value == 10);
    }
}
