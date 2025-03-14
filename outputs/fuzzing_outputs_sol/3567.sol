pragma solidity ^0.8.0;
contract MutateSemantic2 {
    function modifyF0(uint256 x) external {
        x += 545;
    }
}

pragma solidity ^0.8.0;
contract MutateSemantic1 {
    function modifyF1(uint256 x) public pure {
    }
    function modifyF2(uint256 x) public pure {
        throw;
    }
}
