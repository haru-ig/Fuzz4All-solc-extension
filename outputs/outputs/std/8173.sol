pragma solidity ^0.8.0;
contract Math {
    function div(uint a, uint b) external returns (uint){
        if (b == 0){
            return 0;
        }
        return a / b;
    }
}
