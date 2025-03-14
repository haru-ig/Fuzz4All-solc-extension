pragma solidity ^0.8.0;
import "./TestLib.sol";
contract D {
    dynamic uint[]  data;
    function updateData() public {
        data = [1, 2, 3, 4, 5];
    }
}
