pragma solidity ^0.8.0;


contract Mutator {
    uint256 private _amounts;
    constructor() {
        _amounts = 0;
    }
    function() external payable {
        _amounts += msg.value;
    }
    function withdrawAll() public {

        require(address(this).balance >= _amounts);
        msg.sender.transfer(_amounts);
    }
}

pragma solidity ^0.8.0;
contract Mutator {
    Mutator private _mutator;
    constructor() {
        _mutator = new Mutator();
    }
    function() public payable {
        _mutator.withdrawAll();
    }
}
