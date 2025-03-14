pragma solidity ^0.8.0;
contract C {
    function bar() public {
        address payable p = payable(msg.sender);
        p.send(0);
        p.transfer(99999999999999999999999999999999999999);
    }
}

pragma solidity ^0.8.0;
contract C {
    function bar() public {
        if (true && false) {
            address payable p = payable(msg.sender);
            p.send(0);
        }
        else {
            address payable p = payable(msg.sender);
            p.send(0);
            address payable q = payable(0x5a5a5a5a5a5a5a5a5a5a5a5a5a5a5a5a5a5a5a);
            q.transfer(9999999999999999999999999999999999999999);
        }
    }
}
