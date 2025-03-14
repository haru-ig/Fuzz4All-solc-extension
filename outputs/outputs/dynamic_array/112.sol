pragma solidity ^0.8.0;
contract B {
    uint256[] public a;
    constructor () {
        a[0] = 42;
        a[1] = 0;
    }
}

pragma solidity ^0.8.0;
contract B {
    bytes32[] public a;
    function mem_cons() public {
        a.push(bytes32(0));
        a.push(bytes32(0));
    }
}
contract B {
    bytes32[] public a;
    constructor () {
        a.push(bytes32(0));
    }
}

pragma solidity ^0.8.0;
interface Fallback {
    function fallback() external payable virtual;
}
contract B {
    fallback();
}

pragma solidity ^0.8.0;
contract B {
    bytes32[] public a;
    function a1() internal returns (uint256[] memory) {
        a.push(bytes32(0));
        a.push(bytes32(0));
        return a;
    }
}
contract B {
    bytes32[] public a;
   constructor () {
        a.push(bytes32(0));
    }
}

pragma solidity ^0.8.0;
interface I {
    function x() external;
}
interface J {
    function y() external returns (uint8);
}
contract B {
    uint8 x;
    function test(I memory _inst) public {
        _inst.x();
    }
}
contract A is J {
    function z() external returns (uint8) {}
    function y() public override returns (uint8) {}
}
contract B {
    A x;
    constructor () {
        x.y();
    }
}

pragma solidity ^0.8.0;
interface Events {
    event Evt1();
    event Evt2(uint i);
}
contract B is Events {
    constructor () {
    }
}
contract A is Events {
    Events.Evt1 evt1;
    Events.
