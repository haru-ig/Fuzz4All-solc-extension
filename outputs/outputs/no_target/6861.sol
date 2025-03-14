pragma solidity ^0.8.0;
import "./TestMutated707.sol";
contract TestMutated7 {
    function test() public view returns (uint) {
        return TestMutated707.mod(2, 3);
    }
}
