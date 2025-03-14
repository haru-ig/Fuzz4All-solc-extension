pragma solidity ^0.8.0;

contract B {
    AWrapperInterface _proxy;

    address public immutable A;
    uint32 public readonly B_;

    constructor(address a, uint32 b) {
        require(a!= address(0));
        _proxy = AWrapperInterface(a);
        A = a;
        B_ = b;
    }

    function setProxyAddress(address _proxy) external {
        _proxy = AWrapperInterface(_proxy);
    }

    function proxy(uint32 c) external {

    }
}

contract C {
    uint32 D;

    constructor(uint32 d) {
        D = d;
    }
}

contract D {
    address B;

    constructor(address b) {
        require(b!= address(0));
        B = b;
    }

    function callWrapperWithReturn(bytes memory _t) public view {
        bytes memory _o = B.call.value(0)(abi.encode(1));
        require(_o.length == 4);
        require(abi.decode(_o, (uint256)));
    }

    function callWrapperWithoutReturn(bytes memory _t) public view {
        B.call.value(()){};
    }
}

contract e {
    function f(uint256 x) public view {
        uint256 x_ = x;
        uint256 y = x + uint256(10);
        y = x + c;
    }

    function fnc() {
        uint256 x = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000;
        f(x);
    }
}

contract test {
    constructor() public {
        D d1 = new D(0x123412343248488);
        D d2 = new D(0x812341234228283);
        d1.callWrapperWithReturn(abi.encodeWithSelector(address(D).value(100)(), d2.d()));
        d2.callWrapperWithoutReturn(abi.encodeWithSelector(address(D).value(42)(), d2.d()));
    }
}
