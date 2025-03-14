pragma solidity ^0.8.0;
contract TestPrecompiled00285 is TestPrecompiled00282 {
    mapping (uint => uint) public mapX;
    function TestPrecompiled00285() public {
        mapX[1] = 2;
    }
}
contract TestPrecompiled00287 {
    event Evt(uint _a);
    uint x = 0;
    address payable payableRef;
    function TestPrecompiled00287() public {
        emit Evt("Test event with no gas (emit no gas)");
    }
}
contract TestPrecompiled00292 {
    event Evt(uint _a);
    uint x = 0;
    address payable payableRef;
    function TestPrecompiled00292() public {
        try {
            if (x < 10) {
                throw;
            }
        } catch {
            return;
        }
    }
}
contract TestPrecompiled00295 {
    event Evt(uint _a);
    uint x = 0;
    address payable payableRef;
    function TestPrecompiled00295() public {
        bytes1 x;
        assembly {
            x := 0
        }
    }
}
contract TestPrecompiled00297 is TestPrecompiled00282 {
    event Evt(uint _a);
    uint x = 0;
    address payable payableRef;
    function TestPrecompiled00297(address payableRef_arg) public {
        emit Evt(uint(address(this))).gas;
        emit Evt(uint(address(mapX)).gas);
    }
}
contract TestPrecompiled00298 {
    event Evt(uint _a);
    uint x = 0;
    address payable payableRef;
    function TestPrecompiled00298() public {
        emit Evt(uint(address(this))).gas);
        emit Evt(uint(address(mapX)).gas);
        emit Evt(uint(address(payableRef)).gas);
    }
}
contract TestPrecompiled00301 {
    event Evt(uint _a);
    uint x = 0;
    address payable payableRef;
    function TestPrecompiled00301() public {
        emit Evt(uint(address(this)).gas);
        emit Evt(uint(address(mapX)).gas);
    }
}
contract TestPrecompiled00302 is TestPrecompiled00282 {
    event Evt(uint _a);
    uint x = 0;
    address payable payableRef;
    function TestPre
