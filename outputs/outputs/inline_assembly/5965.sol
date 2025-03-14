pragma solidity ^0.8.0;


import "./Math.sol";

contract Testing {

    function log(string memory _x) internal returns(bool) {
        uint _f = uint(_x);
        Math.multiply(_f);
        return true;
    }

}
