pragma solidity ^0.8.0;
contract C {
    bytes32 public a;
    bytes32 public b;
    uint public a_;
    uint public b_;
    constructor(bytes32 _a, bytes32 _b, uint _a_, uint _b_, bytes32 _extra) public {
        a = _a; a_ = _a_;
        b = _b; b_ = _b_;
    }
}
 contract ERC20{
    uint256 public totalSupply;
    function balanceOf(address who) returns (uint256);
    function transfer(address to, uint256 value);
    function transferFrom(address from, address to, uint256 value);
    function approve(address spender, uint256 value);
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
}
contract C {
    ERC20 internal a;
    ERC20 internal b;
    constructor(address _a, address _b) public {
        a = ERC20(_a);
        b = ERC20(_b);
    }
}

pragma solidity ^0.8.0;
contract C {
    bytes32 public a;
    bytes32 public b;
    uint public a_;
    uint public b_;
    constructor(bytes32 _a, bytes32 _b, uint _a_, uint _b_, bytes32 _extra) public {
        a = _a; a_ = _a_;
        b = _b; b_ = _b_;
    }
}

pragma solidity ^0.8.0;
contract C {
    bytes32 public a;
    bytes32 public b;
    uint public a_;
    uint public b_;
    constructor(bytes32 _a, bytes32 _b, uint _a_, uint _b_, bytes32 _extra) public {
        a = _a; a_ = _a_;
        b = _b; b_ = _b_;
    }
}
contract X {
    bytes32 public foo1;
    constructor(bytes32 _foo1) public {
        foo1 = _foo1;
    }
}

contract Y {
    address
