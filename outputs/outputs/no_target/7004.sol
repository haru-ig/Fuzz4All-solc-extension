pragma solidity ^0.8.0;
import " contracts/Test.sol";
contract SomeTest {
    function test() public returns (uint256 a) {
        if (Test.func() > 0)
        a = a+1;
        if (a!=1)
        return 0;
        return 1;
    }
}
