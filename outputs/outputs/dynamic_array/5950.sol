pragma solidity ^0.8.0;
contract Test29603Mut {
    function mutating_assignment_array_bug() public {
        dataArray[2] = [3];
    }
}
