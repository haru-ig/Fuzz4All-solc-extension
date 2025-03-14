pragma solidity ^0.8.0;
contract C10 {
    uint256 m;
    function f(uint256[] memory a) public {
        m = 100;
    }
    function f(uint256[] calldata ab) public {
        for(uint256 i = 0 ; i < ab.length ; i++) {



            uint256 x = a[i];
            m = x * x + 5*m;
        }
    }
}
