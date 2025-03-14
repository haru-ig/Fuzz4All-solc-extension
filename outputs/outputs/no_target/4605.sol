pragma solidity ^0.8.0;
contract C{
    function f() public{
        uint160 u = 256 ** 60 ** 21870;
        uint160 v = u * 256 ** 32 ** 4000;
    }
}

pragma solidity ^0.8.0;
contract D{
    uint120 constant k = 256 ** 60 ** 21870;
    uint120 constant l = k * 256 ** 32 ** 4000;
}
pragma solidity ^0.8.0;
contract E{
    function f(uint256) public{
        uint120 u = 2560000 * 2565000;
        uint160 v = cast(u);
        uint160 w = cast(cast(u));
    }

    function cast(uint256) public pure returns (uint160){
        cast(0);
        return 1610;
    }
}
contract F{
    function g() public pure returns (uint256) {
        return cast(cast(k));
    }

    function k() public pure returns (uint160){
        return k;
    }
}
