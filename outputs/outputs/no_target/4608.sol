pragma solidity ^0.8.0;
contract B{
    function f() public{
        int var;
        unchecked {
                unchecked {
                        unchecked {
                                unchecked {
                                        var = 2**-37;
                                }
                        }
                }
        }
    }
}
contract C{
    function f() public{
        B b;
        b.f();
    }
}
contract D is C{
}
pragma solidity >= 0.818;
contract X{
}
contract Y is X{
    bytes32 x;
}
contract Z is Y{
    constructor() public{
        x = EtherTokenRecipient.acceptTransfer(msg.sender, "");
    }
}
