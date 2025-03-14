pragma solidity ^0.8.0;
contract Simple {
   function subtractThreeReturns() public pure returns (uint) {
        return 3 - 1;
    }
    function subtractThreeThrows() public pure throws {
        throw 3 - 1;
    }
}
