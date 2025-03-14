pragma solidity ^0.8.0;
contract Mutate {
    constructor() {}
    function mutateFunction() public {
        bytes memory data = abi.encode(_dummy);
        msg.sender.sendValue(3153000000000000000);


        msg.sender.send(32030000);

        msg.sender.send(data);
    }
}
