pragma solidity ^0.8.0;
contract B {
    B public parent;
    modifier onlyChild {
        require(
            hasAncestor(msg.sender, parent),
            "Parent is not child"
        );
        _;
    }
    function hasAncestor(address _a, address _b) public returns (bool) {
        return _a.ancestorOf(_b);
    }
    function setAncestor(address _a, address _b) public {
        parent = B(_b);
    }
}
contract Test is B {
    constructor() public {
        setAncestor(msg.sender, address(0));
        parent.setAncestor(address(0), msg.sender);
    }
}
