pragma solidity ^0.8.0;
contract ChildInterface2 {
    function g() external pure returns (uint256 p) {
        p = 4;
    }
}

pragma solidity ^0.8.0;
contract ChildAnon2 is ChildInterface2 {
    function g() external pure returns (uint256 _k) {
        return 42;
    }
}

pragma solidity ^0.8.0;
contract Parent {
    ChildAnon2 _childBase;
    ChildAnon2 _childImpl;

    constructor () {
        _childBase = ChildAnon2(_childBase.g() + 1);
        _childImpl = ChildAnon2(_childImpl.g() / 2);
    }
}

pragma solidity ^0.8.0;
contract MutatedParent {
    Parent _parent;
    ChildAnon2 _child;

    function mutateParentChild() public {
       _parent._childBase = _child;
    }
}
