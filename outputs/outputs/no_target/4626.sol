pragma solidity ^0.8.0;
contract B {
    constructor(string memory test) {}
    function f() public{
        f();
    }
}

pragma solidity ^0.8.0;
contract B {
    modifier f() {
    }

    function f() public view {
    }
}

pragma solidity ^0.8.0;
contract B {
    constructor(string memory test) {}
}

pragma solidity ^0.8.0;
contract B {
    modifier f() {
    }

    function f() public {
    }
}



abstract contract IERC20 {

    function totalSupply() public virtual returns (uint256);


    function balanceOf(address account) public virtual returns (uint256);


    function transfer(address recipient, uint256 amount) public virtual returns (bool);


    function allowance(address owner, address spender) public virtual returns (uint256);


    function approve(address spender, uint256 amount) public virtual returns (bool);


    function transferFrom(address sender, address recipient, uint256 amount) public virtual returns (bool);


    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Emitted when the allowance of a `spender` for an `owner` is set
