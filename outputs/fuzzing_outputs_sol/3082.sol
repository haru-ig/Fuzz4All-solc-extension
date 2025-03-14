pragma solidity ^0.8.0;
contract Mutated {
    function mutatedExample10(Example10S memory x) internal {
        Example10S memory a = x;
        a.a = 3;
        Example10S memory b = a;
        b.b = 5;
    }
}

pragma solidity ^0.8.0;
contract Example11 {
    receive() external payable {}
    receive() external {}
}

pragma solidity ^0.8.0;
contract Caller {
    receive() external {
        Example11 c;
    }
}

pragma solidity ^0.8.0;
contract Example12 {
    event MyEvent();
    function callExample10(Example10S memory x) internal {
        Example10S memory y = x;
        y.addr.transfer(uint(y.addr) + 1);
    }
    function callE12() public payable {
        receive();
        receive();
        Example11 c;
        Example10S memory x = Example10S(address(this), 10, 0);
        callExample10(x);
        require(msg.value == uint(address(this)));
    }
}

pragma solidity ^0.8.0;
contract Example13 {
    event MyEvent();
    function callExample10(Example10S memory x) internal {
        Example10S memory y = x;
        y.addr.transfer(uint(y.addr) + 1);
    }
    function callE13() public payable {
        receive();
        receive();
        Example11 c;
        bool not_called;
        not_called = false;
        Example10S memory x = Example10S(address(this), 10, 0);
        callExample10(x);
        require(not_called);
        not_called = false;
        receive();
        receive();
        require(msg.value == uint(address(this)));
    }
}
