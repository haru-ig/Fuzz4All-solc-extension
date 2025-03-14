pragma solidity ^0.8.0;
contract Muted {
    struct Data {
        string foo;
    }
    Data memory d;
    modifier m {
        if (msg.value > 0) throw;
        d = d + 1;
        _;
    }
    function Test() public pure {
        m;
        bytes memory b = toBytes(d);
    }
}
