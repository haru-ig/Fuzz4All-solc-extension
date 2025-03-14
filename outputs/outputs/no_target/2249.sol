pragma solidity ^0.8.0;
contract mutation3 {
    uint256 public c;
    constructor() public {
        c = 5;
    }
    function g() public {
        c = 5;
    }
}
contract mutation4 {
    uint256 public c;
    constructor() public {
        c = 5;
    }
    function h() public {
        c = 6;
    }
}
contract mutation5 {
    uint256 public c;
    constructor() public {
        c = 5;
    }
    function h() public {
        c = 5;
        f();
    }
    function f() public {
        c = 6;
    }
}
