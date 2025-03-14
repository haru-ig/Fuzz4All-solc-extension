pragma solidity ^0.8.0;
contract Fallback {
    fallback () {
        Fallback6 storage _fallback = fallback6_;
        message.sender.send(address(this).balance - 100);
        _fallback.receive();
    }
}
contract Caller {
    constructor () public {
        fallback6_.receive();
    }
    Fallback6 internal fallback6_;
}
