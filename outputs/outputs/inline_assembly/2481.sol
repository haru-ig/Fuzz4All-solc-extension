pragma solidity ^0.8.0;
contract Comp2 {

    uint _a = 101;
    function setIncrease(uint _increase1) public {
        _a+=_increase1;
    }

}

address admin;
contract AdminControlledTest {
    Comp1 c;
    Comp2 c2;
    address payable testaddress;
    bytes32 public constant BYTES4 = '\x19E104588f393bE99f9E56f9F80000000000000';
    uint public constant BYTES8 = 0x6178ed67807245F327F9788CE40D6bD412A37C9DBE480F3667B42170E629C3E;

    constructor() {
        admin = msg.sender;
        c = new Comp1(1);
        c2 = new Comp2();
    }

    function increaseNumber(uint by) public {
        if(tx.origin == admin) {
            c.setIncrease(by);



            require(c._a == 101);
            c2._a=42;
            c.increaseNumber(3);



        }
    }

    function testBytes8() public view returns (bytes32) {



        return BYTES4;
