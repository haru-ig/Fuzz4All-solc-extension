pragma solidity ^0.8.0;
contract Mutator {
    fallback function Mutator() external payable {
        emit Mutated{});
    }

}
contract SimpleFallbackCaller {
    function Mutator() public {}
}
