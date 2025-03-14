pragma solidity ^0.8.0;
contract C22{
    address payable private _caller;

    constructor(address payable caller) public {
        _caller = caller;
    }

    function c() public view {
        _caller.transfer{value: msg.value}(1);
    }
}

pragma solidity ^0.8.0;
contract Call {

    constructor(address payable caller) public {
        _caller = caller;
    }

    receive() external {
        _caller.transfer(2 * 3);
    }

}
