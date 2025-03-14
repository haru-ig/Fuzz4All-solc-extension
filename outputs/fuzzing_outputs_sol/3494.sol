pragma solidity ^0.8.0;
contract MutatedStorage6 {
    constructor() public {}
    function mutate() public {
        mutateStorage2();
    }
    function mutateStorage1() internal {
        selfdestruct(msg.sender);
    }
    function mutateStorage2() internal {
    }
}
Contract is MutatedStorage4 MutatedStorage6 {

}
