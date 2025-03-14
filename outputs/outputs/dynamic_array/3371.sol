pragma solidity ^0.8.0;
import './I3a.sol';
contract c3a is I3a {
    function foo() public view returns(uint256[] memory) {
        uint256[] memory foo = uint256[]();
        foo[0] = 2;
        return foo;
    }

    function bar() public {
        uint256[] memory foo = foo();
        require (foo[0] == 2);
    }
}
