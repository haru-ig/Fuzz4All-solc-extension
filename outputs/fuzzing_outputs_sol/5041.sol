pragma solidity ^0.8.0;
contract Mutate {
    function mutate(Simple storage s) public {
        uint256 old = s.mutate();
        uint256 newValue = type(uint256).max;
        s.mutate();



        if (newValue % old!= 0) {
            revert();
        }
    }
}
