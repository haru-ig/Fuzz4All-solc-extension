pragma solidity ^0.8.0;
contract ExampleFunction2{
    function MyFunction(uint256 aNumber) public pure{
        uint256 bNumber = 100;
        if(aNumber is uint256 and bNumber is uint256) {}
    }
}
