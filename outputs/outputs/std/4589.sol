pragma solidity ^0.8.0;
import "./Array.sol";
contract ArrayExample {
    function callAndCallExample(uint[] memory values) public pure {
        Array.arrayFunc(values);
    }
}
contract CheckArrayElements {
    function checkArray(uint[] memory values) public pure {
        Array.arrayFunc(values);
    }
}
