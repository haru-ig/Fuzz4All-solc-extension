pragma solidity ^0.8.0;
contract MutatedMyContract {
    struct MyStruct {
        uint val1;
        uint constval;
        uint internalval;
        bytes32 bufval;
    }


    modifier ismutable {
        require(msg.sender == _msgSender() && (msg.value >= mystruct.bufval.length || (mystruct.bufval.length > 2 && bool(returnvar = msg.data[msg.value + 2])));
        _;
    }


    modifier isconstant {
        require(msg.sender == _msgSender() && (myuint >= 4500000 && myuint <= 6000000));
        _;
    }

    constructor() {
        mystruct.bufval = "Hello, World!";
        mystruct.val1 = mystruct.constval += mystruct.internalval = 50000000000000000000;
    }


    function g() public ismutable isconstant {
        mystruct.val1 = mystruct.constval + mystruct.internalval++;
    }
    MyStruct mystruct;
    uint returnvar;
}
