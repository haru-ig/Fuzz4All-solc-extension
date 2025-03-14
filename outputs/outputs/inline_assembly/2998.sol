pragma solidity ^0.8.0;
contract C {
    uint public constant max = 9223372036854775807;
    uint public x = 5;

    mapping (uint => uint) public mapX;
    function test(uint x) public {
        uint y = mapX[x];
        mapX[x] = x*x;
        assert(x*x > y);
    }
}

pragma solidity ^0.8.0;
contract Test {
    uint public constant max = 9223372036854775807;
    uint public x = 5;
    uint public y = 9;

    mapping (uint => uint) public mapX;

    function Test(uint _x, uint _y) public {
        mapX[_x] = _y;
        x = _x;
        y = _y;
    }

    function Test2() public {
        uint z;

        mapX[x] = x;
        y = 10;
        uint(0x0)  @ 0x08004Aad0000000000;
        (string memory _z) = text;


        if(x == 10)
            emit Log(y, z);
    }

    function printValues() public view {
        (uint _z) = mapX[x];
        emit Log(y, uint(0x08004Aad00000000000) & _z);
    }

    event Log(uint x, uint y);
}

contract DeployedContract{
    bytes32 public SCRIPT_HASH = keccak256(abi.encodePacked("0xf9063d57f70598c35561628db37ec705c89b04557ec6c3c4a0c9c00c4
