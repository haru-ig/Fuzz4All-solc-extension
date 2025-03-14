pragma solidity ^0.8.0;
contract CheckArithmatic {
    function add(uint x, uint256 y) public pure returns (uint) {
        uint256 x256 = x;
        unchecked {
        require (x256 + y < 500, "invalid");
        return x256 + y + 5;
    }
    }
}
pragma solidity ^0.8.0;
contract TestMutated4 {
    function checkAdd(uint x, uint256 y) public pure returns (uint) {
        uint256 x256 = x;
        unchecked {
        (,uint256) = x256 + y;
        Assert.eq(x256 + y + 1, x, "add");
        return x256 + y + 5;
    }
    }
}
