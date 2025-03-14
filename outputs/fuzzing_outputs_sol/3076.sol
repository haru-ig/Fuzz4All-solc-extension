pragma solidity ^0.8.0;
contract Example11 {
    function Example11() {
        Example11.change(Example11.state);
        uint _b = Example11.change(Example11.b);
        Example11.change(Example11.state);
    }
}

pragma solidity ^0.8.0;
contract Caller {
    Constructor public;
    Receive public;
    function Contract() { }
    function payable TestReceive() external payable { Receive(); }
    function TestPayable() external payable { }
    fallback function receive() { Caller.Receive(); }
    struct Receive() { }
}
