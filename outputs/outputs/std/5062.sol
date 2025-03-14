pragma solidity ^0.8.0;
contract Mutation {
    uint256 x = 3;
    uint256 y = 4;
    function printValues(){
        uint y = 4;
        uint X;
        (X,y) = (y, X);
    }
}

pragma solidity ^0.8.0;
contract Inequality {
    uint256 x = 5;
    uint256 y = 5;
    function printValues(){
        uint X3 = 5;
        uint X;
    }
}
