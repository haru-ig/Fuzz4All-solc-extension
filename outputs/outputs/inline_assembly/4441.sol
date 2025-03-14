pragma solidity ^0.8.0;
contract Emulator10 {
    uint x;
    mapping(address => bool) storage hasAddress;
    constructor(address _owner) public {
        hasAddress[_owner] = true;
    }
    modifier onlyowner{
        require(hasAddress[msg.sender], "!hasAddress");
        _;
    }
    function set(uint x) public onlyowner{
        x;
    }
    function change(bool x) public{

    }
}


pragma solidity >=0.8.0 <0.9.0;
contract CompiledDemo {

    uint[10][10] memory;
    uint256[10] storage;

    function demo1() public {
        for(uint i=0; i<5; i++){
            memory[i][i] = (i+5) /6;
            storage[i+5] = i+1;
        }
    }
    function demo2() public view returns (uint[10][10]) {
        for(uint i=0; i<5; i++){
            memory[i][i] = (i+5) /6;


        }
        return memory;
    }
    function demo3() public view returns (uint256[10]) {
        for(uint i=0; i<5; i++){
            storage[i+5] = i+1;
        }
        return storage;
    }


}
