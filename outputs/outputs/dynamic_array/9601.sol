pragma solidity ^0.8.0;
contract Main2 {
    address payable addr;
    function a(uint256 t) public {
        uint256 x = 0;
        for(uint256 i=0; i<t; i++){
            addr.transfer(0);
        }
    }
}
