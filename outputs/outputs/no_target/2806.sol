pragma solidity ^0.8.0;

contract foo {
    uint256 public x;
    constructor(uint256 x_) public {
        x = x_;
    }
}

pragma solidity ^0.8.0;
contract new160 {
    constructor()public{
        foo fooobject=new foo(16);
    }
}
pragma solidity ^0.8.10;
