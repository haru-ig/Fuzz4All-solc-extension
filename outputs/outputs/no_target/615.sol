pragma solidity ^0.8.0;
modifier Assert(bool _condition) {revert() if (!_condition);}
contract AWrapperInterface {
    constructor() public {
        Assert(msg.origin == type(IAO).resolveAddr());
    }
}
