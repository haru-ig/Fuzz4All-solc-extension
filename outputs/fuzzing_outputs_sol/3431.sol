pragma solidity ^0.8.0;
contract BogusCaller {
    function send() public internal payable {
        assembly {

        }
    }
}
contract Modifiers {
    modifier onlyBogusCaller {
        BogusCaller b;
        require(msg.sender == address(b));
        _;
    }
    modifier onlyBogusCallerWithoutStorage {
        BogusCaller b;
        require(msg.sender == address(b));
        require(
            (b.receive() == 0) ||
            (block.timestamp == 0) ||
            (block.timestamp <= block.number + 60)
        );
        _;
    }
}

pragma solidity ^0.8.0;
contract BogusCaller {
    struct Caller {
        bool hasStorage;
        uint storedTo;
        uint receiveReturn;
    }

    mapping(bytes4 => mapping(address => Caller)) public _b2a;

    bytes4 constant GET = 0x11;

    function send() public onlyBogusCaller {
        _b2a[GET][msg.sender] = Caller({hasStorage: true, storedTo: msg.value, receiveReturn: 0});
    }

    function readStorage() public payable onlyBogusCallerWithoutStorage
    {
        Caller c = _b2a[msg.sig][msg.sender];
        require(c.hasStorage);
        require(msg.value == c.storedTo);
        require(c.receiveReturn == 0);
        c.receiveReturn = msg.value;
        assembly {
            mstore(32, return(add(0, c.receiveReturn)))
        }
    }

    function callStorage() public onlyBogusCallerWithoutStorage {
        assembly {
            lstore(c.storedTo)
        }
    }

    function changeAddress() public onlyBogusCaller {
        _b2a[msg.sig][msg.sender] = 0;
    }

    function changeAddress2() public onlyBogusCaller {
        _b2a[0xabcd][msg.sender] = 0;
    }
}
