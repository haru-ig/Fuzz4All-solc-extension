pragma solidity ^0.8.0;
contract MutatedSafeMath8 {
    function mult(uint x, uint y) internal pure returns (uint z) {
        require(x <= y);
        return x*y;
    }
}

pragma solidity ^0.8.0;
contract RedefinedFunctionModifiers8 {
    modifier modifierExample {
    }
    function test() public modifierExample {
        console.log("test passed");
    }
    function mult(uint x, uint y) public pure returns (uint z) {
        require(x <= y);
        return x*y;
    }
}
