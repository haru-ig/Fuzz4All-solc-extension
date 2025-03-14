pragma solidity ^0.8.0;
contract FallbackModifierWithReceiveStorage {
    uint a = 42;
    uint[4] storage x;
    uint public x;
    modifier ifValidX() {
        require(x > a, "x must be > a");
        _;
    }
    function setX(uint x_) public {
        x = x_;
    }
    function accept(address) {
        x.length;
    }
}
contract BurningAddress {
    address payable public dest;
    uint[] x;
    bytes32 public value;
    constructor(address payable dest_) {
        dest = dest_;
        x.length = 1;
    }
    function () external payable { }
    payable function burn(uint[10] memory x_) public {
        bytes32[] memory _x = x_;
        value = x_[7];
        for (uint i = 8; i < 10; i++) {
            if (value > i) {
                break;
            }
            revert();
        }
        dest.transfer(_x[3]);
        return;
    }
}
contract BurnTest {
    event Test(address addr);
    address payable payableAddress;
    address payable payableAddress2;
    address payable payableAddress3;
    address dest1;
    address dest2;
    bytes32 value;
    address dest3;
    function burnStorage() public payable {
        dest1.transfer(1 ether + 10 ether);
        payableAddress.transfer(1 ether + 10 ether);
        dest2.transfer(1 ether + 10 ether);
        value = bytes32(uint(uint(2**255)-2000000) & 0xff);
        Test(payable(payableAddress).transfer(1 ether + 10 ether));
        payableAddress2.transfer(1 ether + 10 ether);
        dest3.transfer(1 ether + 10 ether);
    }
}
