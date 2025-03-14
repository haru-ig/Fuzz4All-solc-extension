pragma solidity ^0.8.0;
abstract contract AbstractBaseTest {

}
contract TestBase {
    function test() public pure returns (AbstractBaseTest) {
        return new AbstractBaseTest();
    }
}
contract ConstantAccessBlock {

}
contract TestConstantAccess {
    function test() public pure returns (ConstantAccessBlock) {
        return new ConstantAccessBlock();
    }
}
