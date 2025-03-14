pragma solidity ^0.8.0;
contract simple_abi1 {
     function f() internal pure virtual returns (uint256) {
        return 1;
    }

    function safe() public {
        transfer(address(0xAEEFCAFF0000000000000000000000000000000000000000000000000000000), 1);
        uint256 x = f();
        Assert.equal(x, 1, "FAIL");
    }

    function transfer(address t, uint256 n) public {
        Assert.equal(t, address(this), "FAIL");
        Assert.equal(n, 1, "FAIL");
    }
}
