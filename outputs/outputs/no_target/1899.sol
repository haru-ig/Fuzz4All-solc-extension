pragma solidity ^0.8.0;
contract UintWrapper {
    function x() public pure returns (uint) {
        return UintWrapper.x()

    }
}
contract Uint160 {
    function x() pure public returns(uint160) {
        return uint160(-UintWrapper.x());
    }
}
