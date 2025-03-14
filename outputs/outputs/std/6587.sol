pragma solidity ^0.8.0;
contract Mutator {
    modifier public {
        x = 1;
        _;
    }
    uint256 public mutable x;
}
contract Mutator2 {
    uint256 public x = 1;
}
contract Mutator3 {
    function f() public {
        x = x | 1;
    }
}
contract Mutator4 {
    function f(uint256 x) public returns (uint256) {
        x = (x | 1);
        return x;
    }
}
contract Mutator5 {
    uint256 x;
    modifier m() {
        x = 1;
        _;
    }
    function test() public {
        if (x == 1) {
            x = 2;
        } else {
            x = 5;
        }
        x = (x | 1);
        if (x == 1) {
            x = 2;
        } else {
            x = 5;
        }
        x = (x | 1);
        if (x == 1) {
            x = 2;
        } else {
            x = 5;
        }
    }
}
contract Mutator6 {
    constructor(uint256 x) public {
        x += x;
    }
    function f() public pure returns (uint256) {
        return x;
    }
}
interface IInterface {
    function f() external;
}
contract Mutator7 {
    function f(uint256 x) public virtual {
        IInterface(_parent.f());
    }
}
contract Mutator8 {

    constructor(address parent) public {
        IInterface(_parent).f().f();
    }
}
interface IInterface2 {
    function f() external;
}
contract Mutator10 {
    function f(uint256 x) public virtual returns (uint256) {
        IInterface2(_parent.f());
    }
}
