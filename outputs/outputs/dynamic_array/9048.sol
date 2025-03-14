pragma solidity ^0.8.0;
contract Test {
    address admin;
    address owner;




    mapping(address => uint) myContract;

    modifier onlyAdmin() {
        require(msg.sender == msg.sender || msg.sender == admin);
        _;
    }

    modifier onlyOwner() {
        require(msg.sender == msg.sender || msg.sender == owner);
        _;
    }

    function setOwner(address a) public onlyOwner{
        owner = a;
    }

    function setAdmin(address a) public onlyAdmin{
        admin = a;
        myContract[a] = 1;
    }

    function test1() public {
        setOwner(msg.sender);
    }

    function test2() public returns (uint){
        setAdmin(msg.sender);
        return myContract[msg.sender];
    }

    function test3() public returns (uint[] memory) {
        setAdmin(myContract[msg.sender]);
        uint[] memory input = new uint[](3);
        uint[] memory bar;
        for(uint i = 0; i < input.length; i++){
            bar[i] = input[i];
        }
        input = bar;
    }

    function test4() public returns (uint[] memory){
        setAdmin(msg.sender);
        uint[] memory bar;
        uint[] memory input = new uint[](3);
        for(uint i = 0; i < input.length; i++){
            uint next;
            assembly {
                mstore(0x40, 0x1a1a01)
                mstore(0x40+65, 161)
                mstore(0x40+136, 0x332222)
                mstore(0x40+206, 0x443333)
                mstore(0x40+277, next)
                mstore(0x40+347, next)
                mstore(0x40+417, next)
                mstore(0x40+488, next)
                mstore(0x40+559, next)
                mstore(0x40+630, next)
                mstore(0x40+700, next)
                mstore(0x40+771, next)
                mstore(0x40+842, next)
                mstore(
