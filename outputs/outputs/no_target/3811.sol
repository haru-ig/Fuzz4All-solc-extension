pragma solidity ^0.8.0;
contract R3 {
    function badSwap() public {
        address pay to;
        to = msg.sender;
        uint b = to.transfer(a).value(a)("");
    }
}
