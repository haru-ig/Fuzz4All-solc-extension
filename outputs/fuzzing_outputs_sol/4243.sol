pragma solidity ^0.8.0;
contract SentryMutateCaller {
    function Mutator() public payable{
        MutatorSelf(false).mutate();
    }
    function mutate() public {
        fallback();
    }
    function fallback() external payable {
        _mutateCaller();
    }
    receive() external payable {}
}
*/
