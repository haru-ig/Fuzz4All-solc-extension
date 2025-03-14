pragma solidity ^0.8.0;
contract Semantic0024 {
    function equal() public pure {
        uint256 x = 0;
        while(x == 0) {
            if(1 == 1){}
            x = 1;
        }
    }
}


contract Semantic0025 is Semantic0023 {
    function equal() public pure {
        uint256 x = 0;
        while(x == 0) {
            if(1 == 1) {}
            x = 0;
        }
    }
}
