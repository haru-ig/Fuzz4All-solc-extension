pragma solidity ^0.8.0;
contract C2 {
    receive() external payable when (
        address(msg.sender) == 0xBADC0DEF20B329DE7F4E83635FD63a1D364B0308
    );
}
pragma solidity 0.8.3;

contract C1 {
    receive() external payable {}

    function fallback() external payable {}

    struct storage {
        bool mValue;
        uint counter;
    }

    storage x;
}
contract C2 {
    receive() external payable {}

    function fallback() external payable {
        emit Log(x.counter, "1");
        x.counter++;
    }

    struct storage {
        bool mValue;
        uint counter;
    }

    storage x;
}
contract C3 {
    receive() external payable {}

    function fallback() external payable {
        x.counter = x.counter + 100;
    }

    struct storage {
        bool mValue;
        uint counter;
    }

    storage x;
}
contract Caller {
    function f() public {
        emit Log(fct(), "0");
    }
    function fct() public pure returns (uint) {
    return 20u;
    }

    fallback() external payable {
        emit Log(fct(), "2");
    }
    struct storage {
        bool mValue;
        uint counter;
    }

    storage x;
}
contract Fallback {
    event Log(uint indexed id, string result);

    function g() public {
        emit Log(20u, "20");
        emit Log(this.fallback(), "fallback");
    }

    function fallback() external payable {
        emit Log(this.fct(), "1");
    }
    function fct() public pure returns (uint) {
    return 100u;
    }

    struct storage {
        bool mValue;
        uint counter;
    }

    storage x;
}
