pragma solidity ^0.8.0;
contract SemanticWithoutMod {
    uint256 public x;
    function f() public {
        uint256 _x = 1 + x;
    }
}

pragma solidity ^0.8.0;
contract SemanticContract {
    int256 public x;
    function f() public {
        address a = address(new Semantic());
        Semantic _s = a as Semantic;
        _s.f(x);
    }
}

pragma solidity ^0.8.0;
contract SemanticBlock {
    uint256 public x;
    function f() public {
        address a = address(new SemanticWithoutMod());
        SemanticWithoutMod _s = a as SemanticWithoutMod;
        _s.f();
    }
}

pragma solidity ^0.8.0;
contract SemanticBlockWithUncheckedBlock {
    uint256 public x;
    function f() public {
        unchecked {
        }
    }
}

pragma solidity ^0.8.0;
contract SemanticBlockWithUncheckedBlockAndRevert {
    uint256 public x;
    function f() public {
        unchecked {
            revert();
        }
    }
}

pragma solidity ^0.8.0;
contract SemanticContractBlock {
    address public a;
    address public b;
    function f0() public {
        a;
        b;
    }
    function f1() public {
        a.f();
    }
    function f2() public {
        a.f();
        b.f();
    }

}
