pragma solidity ^0.8.0;
interface Mutator {
    function mMethod(address _receiver) external;
}

contract BaseContract {
    constructor(
        address _mutant
    ) {
        Mutator(
            _mutant
        ).mMethod(address(this));
    }

    receive() external payable {
    }
}
