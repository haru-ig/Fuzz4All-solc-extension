pragma solidity ^0.8.0;
contract ReceiveOnlyFallback {
    function fallback() external payable {
    }
}

pragma solidity ^0.8.0;
contract EtherContract {
    bool b;
    address payable c;
    event TestEvent(address indexed c, uint indexed id, uint ethId);
    event ErrorEvent(uint errorID);
    constructor () {
        b = false;
        c = payable((address(this)));
    }
    function shouldBeTrue() public view {
        assert(!b);
        assert(c == msg.sender);
    }
    function setAddr(address payable addr) public {
        c = addr;
    }
    function testThrowEvent() public {
        throw new ErrorEvent(1);
    }
    function testNormalEvent() public {
        TestEvent(c, 1, 2);
    }
}
