pragma solidity ^0.8.0;
import "./../ERC726TestInterface.sol";
pragma experimental ABIEncoderV2;
contract C {
    ERC726TestInterface myContract;
    constructor() {
        myContract = ERC726TestInterface("{}");
    }
    function set(string calldata n,bytes calldata m) public {

    }
}
