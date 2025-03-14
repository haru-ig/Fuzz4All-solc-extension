pragma solidity ^0.8.0;
contract Test{
    contract Fallback{
        receive() external payable{
        }
    }
    receive() external payable{
    }
}
