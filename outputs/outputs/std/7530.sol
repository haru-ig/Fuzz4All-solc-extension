pragma solidity ^0.8.0;
#pragma ton-solidity-version: >= 0.52.0;
import "./WorstCase2.sol";
contract WorstCase3 {
    function worstCase() public view returns (uint) {
        WorstCase2 instance = new WorstCase2();
        uint x = instance.worstCase();
        return (x);
    }
}
