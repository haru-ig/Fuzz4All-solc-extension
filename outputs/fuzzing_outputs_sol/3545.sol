pragma solidity ^0.8.0;
contract MutateFallback0 {
    function f() public view returns (uint256 x){
        return 10;
    }
    function modifyF() public payable returns (uint256 x){
        x += f();
    }
}


pragma solidity ^0.8.0;
contract InterfaceConfusionTest is MutateFallback, MutateFallback0{
    function f() public view returns (bool) {
        return true;
    }
    function accessF() public view returns (uint256 x) {
        x = 1;
    }
    function mutate() public returns (uint256 y, uint256 z) {
        y -= accessF();
        return (2,z);
    }
    function callF() public view returns (uint256 x, (uint256 y)){
        x = 1;
        y = accessF();
    }
    function revertF() public pure returns (uint) {
        (bool reverted, ) = address(this).call{value:10000}("");
        assert(reverted);
    }
}
