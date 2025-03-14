pragma solidity ^0.8.0;
contract Frobber {
    function frob (address frobber, uint16 value) internal {
        emit FrobberClicked(frobber, value);
    }
    function frobResult() public pure returns (uint128 frobResult) {
        return frobResult;
    }
    event FrobberClicked(address indexed frobber, uint16 indexed value);
}
