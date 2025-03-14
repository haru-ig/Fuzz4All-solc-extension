pragma solidity ^0.8.0;
contract Mutator {
    struct State {
        address addressToUpdate;
        uint256 amountToUpdate;
        bool isFromTx;
    }
    State public state;
    fallback() public payable {
        require(state.isFromTx);
        state.addressToUpdate.transfer(state.amountToUpdate);
    }
    receive() external payable {
        state.isFromTx = true;
    }
}
