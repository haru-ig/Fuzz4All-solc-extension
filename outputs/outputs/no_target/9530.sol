pragma solidity ^0.8.0;
contract TestEvent {
    event TestEvent(uint8 result);
    function testEvent16() external {
        emit TestEvent(3);
    }
}
contract TestEvent2 is TestEvent {
    function testEvent16() external {
        emit TestEvent(65529);
    }
}
contract TestEvent3 is TestEvent {
    function testEvent16() external {
        emit TestEvent(0xff);
    }
}
contract TestEvent4 is TestEvent {
    function testEvent16() external {
        emit TestEvent(uint8(0xff));
    }
}
contract TestEvent5 is TestEvent {
    function testEvent16() external {
        emit TestEvent(uint256(0xff));
    }
}
contract TestEvent6 is TestEvent {
    function testEvent16() external {
        emit TestEvent(uint64(0xff));
    }
}
contract TestEvent7 is TestEvent {
    function testEvent16() external {
        emit TestEvent(uint16(0xff));
    }
}
contract TestEvent8 is TestEvent {
    function testEvent16() external {
        emit TestEvent(uint32(0xff));
    }
}
contract TestEvent9 is TestEvent {
    function testEvent16() external {
        emit TestEvent(uint64(0xffff));
    }
}
contract TestEvent10 is TestEvent {
    function testEvent16() external {
        emit TestEvent(uint128(0xffff));
    }
}
contract TestEvent11 is TestEvent {
    function testEvent16() external {
        emit TestEvent(address(0));
    }
}
contract TestEvent12 is TestEvent {
    function testEvent16() external {
        emit TestEvent(bytes1(0xff));
    }
}
contract TestEvent13 is TestEvent {
    function testEvent16() external {
        emit TestEvent(bytes2(0xff));
    }
}
contract TestEvent14 is TestEvent {
    function testEvent16() external {
        emit TestEvent(bytes3(0xff));
    }
}
contract TestEvent15 is TestEvent {
    function testEvent16() external {
        emit TestEvent(bytes4(0xff));
    }
}
contract TestEvent16 is TestEvent {
    function testEvent16() external {
        emit TestEvent(bytes5(0xff));
    }
}
contract TestEvent17 is TestEvent {
    function testEvent16() external {
        emit TestEvent(bytes6(0xff));
    }
}
contract TestEvent18 is TestEvent {
    function testEvent16() external {
        emit TestEvent(bytes7(0xff));
    }
}
contract TestEvent19 is TestEvent {
    function testEvent16() external {
        emit TestEvent(bytes8(0xff));
    }
}
contract TestEvent20 is TestEvent {
    function testEvent16() external {
        emit TestEvent
