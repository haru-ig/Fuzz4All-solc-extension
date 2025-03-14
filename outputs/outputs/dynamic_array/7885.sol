pragma solidity ^0.8.0;
contract Test24 {
    uint[] memory foo;
    function f() public payable {
        unchecked {
        }
        foo = foo;
    }
}
contract Test25 {
    uint[] calldata foo;
    function f() public payable {
        unchecked {
        }
        foo = foo;
    }
}
contract Test26 {
    address[] public foo;
    function f() public payable {
        unchecked {
        }
        foo = foo;
    }
}
contract Test27 {
    address[] calldata foo;
    function f() public payable {
        unchecked {
        }
        foo = foo;
    }
}
contract Test28 {
    constructor() public {
        foo.push(uint(6));
    }
    uint[] public foo;
    function f() public payable {
    }
}
contract Test29 {
    constructor() public {
        foo = new address[](4);
        foo[0] = new address[](1);
        foo[1] = new address[](4);
        foo[2] = new address[](4);
        foo[3] = new address[](1);
    }
    address[] public foo;
    function f() public payable {
    }
}
contract Test30 {
    constructor() public {
        foo();
    }
    uint[] public foo;
    function f() public payable {
    }
}
contract Test31 {
    constructor() public {
        foo();
    }
    address[] public foo;
    function f() public payable {
    }
}
contract Test32 {
    constructor() public {
        foo = new address[](4);
        foo[0].push(new address[](7));
        foo[1] = new address[](2);
        foo[2] = new address[](7);
        foo[3] = new address[](1);
    }
    uint[] public foo;
    function f() public payable {
    }
}
contract Test33 {
    constructor() public {
        foo[0](0).push(new uint[](8));
        foo[1] = new uint[](2);
        foo[2] = new uint[](7);
        foo[3] = new uint[](1);
    }
    address[] public foo;
    function f() public payable {
    }
}
