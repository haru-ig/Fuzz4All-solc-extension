pragma solidity ^0.8.0;
contract Test {
    struct TestStruct {
        uint256 memberOne;
        uint constant memberTwo = 4200;
    }
    function test() public {
        (bool success, ) = address(this).call{value: 10 ether }(abi.encodeWithSelector(this.fct.selector));
        test(1,1);
    }
    function test(uint256 memberOne, uint constant memberTwo) public {
    }
    function fct() public view returns (uint) {
        return (1);
    }
}
