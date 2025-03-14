pragma solidity ^0.8.0;
interface Test{
    function f(uint x) public returns (uint y);
}

pragma solidity ^0.8.0;
interface IERC20{
    function transfer(address to, uint value) external returns (bool succeeded);
}

pragma solidity ^0.8.0;
contract Sample {
    using IERC20 for IERC20;
    event Transfer(
        address indexed _from,
        address indexed _to,
        uint256 _value
    );
    address myAddress;
    constructor(address _myAddress) {
        myAddress = _myAddress;
    }
    function f() public {
        log0("I'm an event log.");
        IERC20(_myAddress).transfer(msg.sender, 1000);
        log0("I'm a log with 0 parameters.");
        IERC20(_myAddress).transfer(address(0x0), 1000);
        log0("This is the fallback function. In this function, you should implement the fallback() function to accept ether. You are receiving " + IERC20(_myAddress).totalSupply().toString() + " tokens.");
        IERC20(_myAddress).transfer(myAddress, 10.2);
        log0("This is the fallback function. In this function, you should implement the fallback() function to accept ether. You are receiving " + (_myAddress.balance).toString() + " tokens.");
        IERC20(_myAddress).transferFrom(myAddress, msg.sender, 12.1);
        log0("This is the fallback function. In this function, you should implement the fallback() function to accept ether. You are receiving " + IERC20(_myAddress).totalSupply().sub(IERC20(_myAddress).transferFrom(myAddress, msg.sender, 12.1)).toString() + " tokens.");
    }
}

pragma solidity ^0.8.0;
interface Test {
    event Transfer(
        address indexed _from,
        address indexed _to,
        uint256 _value
    );
    function f(uint x) public returns (uint z);
}

pragma solidity ^0.8.0;
contract Foo{
    bool someBool;
    uint something;
    function foo() public{
        someBool = true;
        delete foo();
        Log(msg.value).Log(uint256(address(this)).someThing);
        something = 20;
        something = 10;
        something++;
    }
    function bar() public{
        uint32 a = type(IFactory).someFunction(address(this));
    }
    function Log(uint256 _a) public view{
		if (_a == 5){
        Log(uint32(_a));
        }
