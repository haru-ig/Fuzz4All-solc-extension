pragma solidity ^0.8.0;
contract Caller {
    address private _receiver;

    function __ERC1155Receiver_init(address) public {
        _receiver = msg.sender;
    }

    function __ERC1155Receiver_init(address _receiver) public {
        require(address(_receiver) == msg.sender, "Caller");

        _receiver = _receiver;
    }

    function receive(address, uint256, uint256, bytes calldata) external {
        sender();
    }

    function sender() public view returns (address sender_) {
        if (msg.value > 0) {
            require(_receiver == address(0), "Caller");

            return msg.sender;
        }

        return _receiver;
    }
}
contract Caller2x {
    Upgrader2x private _upgrader;

    function __ERC1155Receiver_init(address _upgrader) public {







        address _receiver = msg.sender;

        address _from = _receiver;

        address _contract = Upgrader2x(_upgrader).migrate(_from);

        address _instance = address(uint160(uint256(_contract)));

        address _fallback = _instance;

        _receiver = _fallback;
    }

    function __ERC1155Receiver_init(address _from, address _receiver) public {
        super;

        require(address(_from) == msg.sender, "Caller");

        _receiver = _receiver;
    }
}


contract CallerStorage {
    uint256 constant private _balance = 100;

    function __ERC1155Receiver_init(address) public { }

    function __ERC1155Receiver_init(address _receiver) public {
        require(msg.value == _balance, "Caller");

        _receiver = _receiver;
    }
}
