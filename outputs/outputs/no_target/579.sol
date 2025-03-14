pragma solidity ^0.8.0;
interface ChildInterface {
    function f() external pure returns (uint256 n);
}

contract Child is ChildInterface {
    function f() public pure virtual override returns (uint256) {}
}

contract Parent {
    ChildInterface child = Child();
    constructor(uint256 _balance) public {
    }
    function payBy(ChildInterface child) public {



        uint256 childBalance = child.f();
        child.f();
        uint256 transferFromValue = childBalance;
    }
}
