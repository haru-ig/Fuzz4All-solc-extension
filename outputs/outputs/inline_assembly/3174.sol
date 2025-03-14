pragma solidity ^0.8.0;


import "./C.sol";

contract G as C {


    function len(C.BData memory data) public pure returns (uint) {
        return data.name.length;
    }
}
