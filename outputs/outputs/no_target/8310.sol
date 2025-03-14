pragma solidity ^0.8.0;
abstract contract Updated {
    uint256 constant NEW_VAR_UPDATE = 1;

    function f() public view {
        uint256 constant NEW_VAR_UPDATE = 2;
        assert(NEW_VAR_UPDATE > 0);
    }
}
contract Updated2 is Updated {
    uint256 constant NEW_VAR_UPDATE = 11;
    uint256 constant NEW_VAR_UPDATE2 = 22;

    function f() public {
        assert(NEW_VAR_UPDATE2 >= NEW_VAR_UPDATE + NEW_VAR_UPDATE);
    }
}
contract Updated3 is Updated {
    uint256 constant NEW_VAR_UPDATE = 1;

    function f() public view {
        uint256 constant NEW_VAR_UPDATE = 2;;
        assert(NEW_VAR_UPDATE >= NEW_VAR_UPDATE2);
    }
}
