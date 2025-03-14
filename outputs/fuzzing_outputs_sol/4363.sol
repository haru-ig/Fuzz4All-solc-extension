pragma solidity ^0.8.0;
contract Caller {
    fallback() external payable returns(uint8,uint,uint,uint8){
        return (0xc6, 1, 2, 0);
    }
}
