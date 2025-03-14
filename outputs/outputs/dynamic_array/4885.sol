pragma solidity ^0.8.0;
contract Test2 {
    function foo() public {

        uint32 length = 2;
        (bytes memory emptyArr) = new bytes(length);
        Assert.eq(emptyArr.length, length, "Check 1");
        length = 4;
        (bytes memory nonEmptyArr) = new bytes(length);
        Assert.eq(nonEmptyArr.length, length, "Check 2");
        length = 37;
        (bytes memory largeArr) = new bytes(length);
        Assert.eq(largeArr.length, length, "Check 3");
    }
}
