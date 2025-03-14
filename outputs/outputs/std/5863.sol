pragma solidity ^0.8.0;

import "../node_modules/@openzeppelin/contracts/utils/math/SafeMathLib.sol";
import "../node_modules/@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import "../node_modules/@openzeppelin/contracts/utils/structs/EnumerableSet/EnumerableSet.sol";
contract Contract {
    using EnumerableSet for EnumerableSet.AddressSet;
    using SafeMathLib for uint256;
    constructor(uint256) pub {
    }

    function f() internal pure {
        require(msg.sender == owner(), "Only owner");
    }

    modifier onlyOwner() {
        f();
        _;
    }

}
