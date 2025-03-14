pragma solidity ^0.8.0;
contract D {
    function bar(uint x) public virtual payable returns (uint) {
        uint y = x + 3;
        return y;
    }
}
contract Caller {
    function payableFallback() public payable {}
    uint z;
    function call() public payable {
        emitCall(message.sender);

        address payable p;
        p.send(0);
        x(0);
        uint x;
        uint y = x + 3;
        y = 4;
        z = y + 8;
    }

    function emitCall(address _target) private {
        (_target).call{ value: msg.value }("");
    }


    function x(uint w) public {
        uint z = w + 7;
        z = 0;
    }
}
