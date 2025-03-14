pragma solidity ^0.8.0;

contract FallbackModifierY {
    uint256 a = 42;
    uint256 public y;
    modifier ifValidY() {
        require(a > y, "y must be > a");
        _;
    }
    constructor() { y = 0; }
    function accept(address, uint256) public ifValidY { y = 2 * a; }
    function setY(uint256 y_) public { y = y_; }
}
pragma solidity ^0.8.0;

contract FallbackModifierX {
    uint256 a = 42;
    uint256 public x;
    modifier ifValidX() {
        require(a > x, "x must be > a");
        _;
    }
    constructor() { x = 0; }
    function addX(uint256 x_) public { x = x_; }
    function accept(address, uint256) public ifValidY {
        x = 2 * x_;
    }
}
pragma solidity ^0.8.0;

contract FallbackModifierNoReturn {
    modifier noReturn(uint256)
    {
        return;
        _;
    }
    function accept(address, uint256) public noReturn(1) {}
}
pragma solidity ^0.8.0;

contract ERC20Example {
    event Approval(address indexed from, address indexed to, uint256 value);
    event Transfer(address indexed from, address indexed to, uint256 value);


    function approve(address spender, uint256 amount) public returns (bool);


    function balanceOf(address _owner) public view returns (uint256 balance);


    function transfer(address _to, uint256 _value) public returns (bool success);


    function allowance(address _owner, address _spender) public view returns (uint256 remaining);
}
pragma solidity ^0.8.0;

pragma solidity ^0.8.0;
