pragma solidity ^0.8.0;

contract EmptyContract{
    constructor(){
    }
}
contract NonEmptyContract{
    constructor(){
    }

}
contract LoggableContract {
    constructor() public {
        require(false, "You get 3x + 25x");
    }
    event Log(string _msg);

    function logOld() public { return; }
    function logNew() public {
        Log("You get 3x + 25x");
    }
}
