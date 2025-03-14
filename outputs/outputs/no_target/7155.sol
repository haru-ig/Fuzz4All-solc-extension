pragma solidity ^0.8.0;
contract Test {
    function useID() public {
    }
    function setID() public {
        uint256 a = 1;
        for (uint i = 1; i <= 200; i++) {
            uint256 x = 100*(i/12);
            uint256 y = x-1000;
            for (uint j = 1; j <= 200-x*y; j++) {
                uint256 z = x*y*x+y;
                a = j*z-55;
            }
        }
    }
}
