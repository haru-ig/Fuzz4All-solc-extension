pragma solidity ^0.8.0;
contract Test44 {
    uint public myArray;
    mapping (address => uint) public myMapping;
    mapping (uint => string) public multiMapping;
    constructor() public {
        myArray[0] = 2;
        multiMapping[0] = bytes(address(this));
        myMapping[0] = 6;
    }

    function test() public {
        myMapping[1] = 9;
        delete myMapping[2];
    }
}
contract AdminManagerTest {
    address admin;
    constructor() public {
        admin = msg.sender;
    }
    modifier onlyAdmin{
        require(msg.sender == admin,_msgSender());
        _;
    }
    function test() public onlyAdmin {
        adminOf[msg.sender] = 1;
        delete adminOf[msg.sender];
    }
}

contract AdminManagerTest2 {
    modifier onlyAdmin{
        require(msg.sender > 0x0,_msgSender());
        _;
    }
    function a(address[] memory) public onlyAdmin{}
    function b() public{}
    modifier onlyB(address) pure public returns (address)  {
        _;
    }
}
contract AdminManagerTest3 {
    address admin;
    constructor() public {
        admin = msg.sender;
    }
    modifier onlyAdmin{
        require(msg.sender > 0x0,_msgSender());
        _;
    }
    function onlyB(address) pure public returns (address)  {
        _;
    }
}
