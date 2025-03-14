pragma solidity ^0.8.0;
 contract mutator94 {
    uint256 x;
    constructor () {
        x = 0;
    }
    function increase () {
        x = x + 1;
    }
}
contract mutator94 {
    bool isInitialized;

    function myFunc() public view returns (bool) {
        if (isInitialized) {
            return true;
        } else {
            return false;
        }
    }
}
contract mutator94 {
    uint256 g;
    constructor(){
         if (g == 0) g = 5;
    }
}
