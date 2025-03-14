pragma solidity ^0.8.0;
contract MutateReturnValue {
    function f() public pure returns (uint256 x){
        return 10;
    }
    function modifyF() public pure payable returns (uint256 x){
        x = 10;
    }
    function modifyF1() public pure returns (uint256 x){
        x = 20;
    }
    function returns0() internal pure returns(uint256) {
        return  10;
    }
    function returns1() internal pure payable returns(uint256) {
        return 10;
    }
    function returns2() internal pure returns(uint256, uint256) {
        return (10, 20);
    }
    function returns3() internal pure returns(uint256, uint256, uint256) {
        return (10, 20, 30);
    }
}
