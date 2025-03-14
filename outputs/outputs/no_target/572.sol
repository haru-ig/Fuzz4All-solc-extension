pragma solidity ^0.8.0;
interface Minter {
    function add(uint256 v) external;
}

pragma solidity ^0.8.0;
contract MinterBase is BaseInterface, Minter {
    function f() public pure override returns (uint256 n) {
        return 42;
    }
    function add(uint256 v) public {
        _assertAdd(v);
    }
    function _assertAdd(uint256 v) internal pure {
        require(addCheck(v), "_add failed");
    }
}

pragma solidity ^0.8.0;
contract Derived is MinterBase {
    function f() public pure override returns (uint256 n) {
        return 56;
    }
}

pragma solidity ^0.8.0;
contract Derived2 is MinterBase {
    function f() public pure override returns (uint256 n) {
        return 42;
    }
    function add(uint256 v) public {
        _assertAdd(v);
        _parent.add(v);
    }
    function _assertAdd(uint256 v) internal pure {
        require(addCheck(v), "_add failed");
    }
}
interface DerivedInterface {
    function f() external pure returns (uint256);
}
contract DerivedImplementation is Derived, DerivedInterface {
    function f() public override pure returns (uint256) {
        return 99;
    }
    function add(uint256 v) public override {
        super.add(v);
    }
}
contract Test {
    DerivedImplementation d;

    function test() public {
        d.add(1);
    }
}
