pragma solidity ^0.8.0;
contract fallback3{
    event Fulfilled(uint256 value);
    uint256 public num;
    fallback() external payable {
        num = 1;
        emit Fulfilled(num);
    }
}

contract fallback4 {
    event Fulfilled(uint256 value);
    uint256 public num;
    fallback() external payable external {
        num = 1;
        emit Fulfilled(num);
    }
}

contract caller {
    enum CallType {CALL1, CALL2, CALL3}
    uint256 public num;
    Constructor1 constructorImplementation;

    modifier checkValue(uint256 i) {
        require(i!= 0, "Invalid value for test.");
        _;
    }
    function constructorImplementation() public {
        constructorImplementation = new Constructor1();
    }

    constructor(address a_ConstructorImplementation) public {
        constructorImplementation = Constructor1(a_ConstructorImplementation);
    }


    function test1() public {
        num = call(abi.encodeWithSignature("getNumber()"), CallType.CALL1);
        require(msg.value == 1 ether, "Wrong value");

    }
    function test2() public {
        num = call(abi.encodeWithSignature("getNumber()"), CallType.CALL2);
        require(msg.value == 2 ether, "Wrong value");

    }
    function test3() public {
        num = call(abi.encodeWithSignature("getNumber()"), CallType.CALL3);
        require(msg.value == 3 ether, "Wrong value");

    }


    function test4() public {
        msg.sender.send(4 ether);
        num = safeCallF3(abi.encodeWithSignature("getNumber()"), CallType.CALL1);
        require(msg.value == 5 ether, "Wrong value");
    }



    /*
