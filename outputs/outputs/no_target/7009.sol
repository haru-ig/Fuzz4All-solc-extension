pragma solidity ^0.8.0;
contract SampleContract {
    function func() public pure returns (uint256) {

        return uint256(10000)/uint256(1);
    }

    function func2() public pure returns (uint256) {
        uint8 a;

        a = uint8(10000)/uint8(1);
    }
}
