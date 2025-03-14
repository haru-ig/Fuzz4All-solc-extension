pragma solidity ^0.8.0;
contract MutatedCaller {
    function caller(uint c) public {c = 1234;}
    function f() public payable {
        x = 43;
        if (msg.value == x) {
            payable(msg.sender).transfer(msg.value);
        }else{
            msg.sender.transfer(msg.value);
        }
    }
}

pragma solidity ^0.8.0;
contract MutatedCaller2 {
    function caller(uint c) public payable {c = 1234;}
    function f() public {x = 15;}
    function update(uint b) public payable {
        x = b+15;
        if (b == 5) {
            return;
        }
        msg.sender.transfer(msg.value);
    }
}

pragma solidity ^0.8.0;
contract Value0 {
    uint value;
    function f() public payable {}
    function g(uint d) public payable returns (uint a) { value = d; }
}
