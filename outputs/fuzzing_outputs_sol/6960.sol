pragma solidity ^0.8.0;
contract Mutator {
    function mutate123() internal {
    }
    function mutate() public {
        mutation(0x123);
    }
    function mutation(uint number) private {
        if (number == 55) {
            mutate123();
        }
    }
    function read() public view returns(uint) {
        return 666;
    }
}
