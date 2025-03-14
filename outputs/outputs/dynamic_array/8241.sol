pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "./MutatedSolidity.sol";
contract MutatedContract is Ownable, MutatedSolidity  {
    constructor() public {

    }
}
