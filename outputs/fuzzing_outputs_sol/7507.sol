pragma solidity ^0.8.0;
contract FallbackModifierX2 is FallbackModifierX {
    uint public y;
    function setY(uint y_) public ifValidX {
        y = y_;
    }
    function accept(address, uint) public {
        payable(fallback()).transfer(address(this).balance);
    }
    function fallback() public {
        require(x > y, "y must be > x");
        revert();
    }
}


contract ReceiveModifierX {
    function accept(address, uint) public { }
    function accept(address, string memory, bytes memory) public { }
    receive () public payable { }
    function accept(address, bool): public { }
}
