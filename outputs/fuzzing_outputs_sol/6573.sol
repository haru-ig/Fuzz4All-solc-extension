pragma solidity ^0.8.0;
contract StorageReceiver {
    contract Caller {


      function() public payable { }


      function set(uint) public { }
    }
}
contract Caller {
    StorageReceiver receiver;

    constructor(StorageReceiver memory _receiver) {
        receiver = _receiver;
    }

    function set(uint _x) public {
        require(address(this).balance >= _x);
        receiver.set(_x);
    }
}
