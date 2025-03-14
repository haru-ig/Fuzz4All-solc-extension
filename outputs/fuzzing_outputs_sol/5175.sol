pragma solidity ^0.8.0;
contract C32 is C20 {
    receive () public {
        selfdestruct(msg.sender);
    }
}
contract C48 {
    fallback () payable {}
}
contract C56 {
    receive () external payable {}
    receive () public returns (bool) {
        return true;
    }
}
contract C64 {
    receive () external {}
    receive () public pure {
        if (true) selfdestruct(msg.sender);
    }
}
contract C80 {
    receive () returns (bool) {}
}
