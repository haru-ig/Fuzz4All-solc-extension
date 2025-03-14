pragma solidity ^0.8.0;
contract Tester {
    address public toAdd;
    function Tester() public {
        toAdd = address(1);
    }
    function test1() public {
        setContract(address(this));
        setContract(address(0));
    }
    function setContract(address _add) public {
        toAdd = _add;
    }
    function test2() public {
        IFabric f = Fabric(toAdd);
        add(f.appendBytes(), f.appendBytes2(toAdd));
        add(f.appendBytes3(toAdd,""), f.appendBytes(), f.appendBytes3(toAdd,""));
    }
    function add(bytes memory a, bytes memory b){
        IFabric _f = IFabric(_add);
        _add.call{value: 0x1234}("");
    }
}

contract Test {
    uint public x;
    uint public z;

    constructor() public {
        x=0;
        z=0;
    }
    function test() public { z=0; x=0; set(1, 2); assert(x==2&&z==3); set(4, 5); assert(x==5); assert(z==1);}
    function set(uint _x, uint _z) public {x=_x; z=_z;}
}







pragma solidity ^0.8.0;

contract Utils {

    mapping(uint => bool) public setUsed;
    mapping(uint => uint) public maxUsed;


    mapping(address => uint) contractMax;


    mapping(address => uint) callUsed;
    function setMaxCall(address _addr, uint _value) public {
        if(contractMax[_addr]<_value){
            contractMax[_addr]=_value;
        }
    }

    function set(uint _index, uint _value)
