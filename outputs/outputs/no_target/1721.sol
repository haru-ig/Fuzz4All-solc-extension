pragma solidity ^0.8.0;
contract Mutate0014b {
    uint input = 2;
    function callMe() public {
        input += 2;
        assert(input == 4);
    }
}
