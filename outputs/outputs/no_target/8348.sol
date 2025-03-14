pragma solidity ^0.8.0;
contract Checked {
    function method() internal pure {
        checked{
            unchecked {
            }
        }
    }
}
contract Unsafe {
    function method() internal pure {
        unsafe {
        }
    }
}
contract Burn {
    function method() internal pure {
        burn{
            checked {
            }
        }
    }
}

contract EmitsUncheckedEvents {
    function emitUncheckedEvent(address log1, uint log2, address log3, uint log4) external pure {
        (uint[5]) memory logMessage;
        logMessage[0] = 0x736f7574;
        logMessage[1] = 0x74657374;
        logMessage[2] = 0xffffffff;
        logMessage[3] = 0xfffffffe;
        logMessage[4] = 0xffffffffffff100;
        event(0, log1, logMessage[0], logMessage[1], logMessage[2], logMessage[3]);
    }
}
contract EmitsUnsafeEvents {
    function emitUnsafeEvent() external pure {
        event(0, 0x45, 0x68, 0xfe, 0xff, 0x00);
    }
}
contract EmitsBrownieEvents {
    function emitBrownieEvent() external pure {
        event(0, 0, 0, 0, 0, 0);
    }
}
contract EmitsOverloadedEvents {
    function emitOverloadedEvent(uint, uint, address a, address b, address c, address d) external pure {
        event(0, a, b, c, d, 1);
    }
}
contract EmitsEvents {
    function emitEvent(uint, uint, address a, address b, address c, address d) external pure {
        event(0, a, b, c, d, 0);
    }
}

contract Modifiers {
    function modifier() {
        unchecked();
        emit Event();
        unchecked();
        emit Event();
        emit Event();
    }
}
contract ModifiersEvents {
    function event() public pure {
        emit Event();
    }

    modifier noEvents() {
        emit Event2();
        emit Event3();
    }
}
contract ModifiersEvents2 {
    function event() public pure {
        emit Event2();
    }

    function event2() public pure {
        emit Event3();
    }
}


contract Test {
    function test() public pure {
        emit EmitsBrownieEvents.emitBrownieEvent;
        emit EmitsOverloadedEvents(3, 4, 0x00000000000000000000000000000004, 0x000000000
