pragma solidity ^0.8.0;
contract Caller {
    function CallContract() public {
        SentryMutateCallerV2().Mutator.value(100 ether).transfer(address(this));
    }
    fallback() external payable {}
}
address contractAddres = 0xCD856DB6710a1C31d2d98167e677602e2D59758A;
address payable contractAddresWithEther = payable(0xCD856DB6710a1C31d2d98167e677602e2D59758A);
fallback() external payable {}
