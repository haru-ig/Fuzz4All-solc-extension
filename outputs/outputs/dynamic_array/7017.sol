pragma solidity ^0.8.0;
contract Test74 {
        bytes32 public foo;
        constructor() public {
                emit Transfer(address(this), address(0), 2);
                emit Transfer(address(0), address(this), 3);
        }
}
