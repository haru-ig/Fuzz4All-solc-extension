pragma solidity ^0.8.0;
contract Mutater {
    function mutaterWithCall() public {
        uint32 result = Mutater.mutaterWithCall();
        assert(result > 0);
    }
}
