pragma solidity ^0.8.0;
pragma solidity >=0.8.0;
contract third {
    function g() public pure {
        address a = 1;
    }
    function h() public pure {
        address a = 0;
    }
}

contract third {
    bytes32 public foo;
    constructor(string memory _foo) {
        foo = keccak256(abi.encodePacked(_foo));
    }
    function g() public pure {
        address a = foo;
    }
    function h() public pure {
        address a = bytes32(42);
    }
}

pragma solidity ^0.8.0;
pragma solidity >=0.8.0;
contract third {
    uint256 public foo;
    event Log(uint256 _a);
    byte public foo2;
    constructor() {
        foo2 = 0;
        emit Log(foo);
    }
    function g() public pure {
        address a = foo;
        emit Log(foo);
        emit Log(foo2);
    }
    function h() public pure {
        address a = foo2;
        emit Log(foo2);
        emit Log(foo);
    }
}
