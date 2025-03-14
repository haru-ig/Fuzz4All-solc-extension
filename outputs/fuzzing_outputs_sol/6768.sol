pragma solidity ^0.8.0;
contract Caller {
    bytes public x;
    uint256 y;
    constructor() {
        x.push(0xab);
    }
    receive() external payable {
        if (msg.data.length!= 42) revert("Not exactly 42 bytes sent");
        x.push(0xf1);
        emit FallbackLog(msg.value);
    }
    event FallbackLog(uint256 a);
}
contract Sink {
    event Data(uint256 a);
    contract SinkImplementation is Caller {
        function fallback(uint256 a) public{
            emit Data(a);
        }
    }
    SinkImplementation public sink;
    constructor() { sink=new SinkImplementation(); }
    function f() public { require(bytes(sink.x)[0] == 0, "This is wrong"); emit Data(33);}
}
pragma solidity 0.8.0;
