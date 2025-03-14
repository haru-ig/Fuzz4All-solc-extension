pragma solidity ^0.8.0;
contract Emulator9{
    uint[99] memory mem;
    uint[98] memory previous_mem=mem;
    mapping(uint => uint) mem_index;

    function save() public returns(uint){
        uint index=mem.length+1;
        uint[99] storage new_mem=mem;
        new_mem[index]=previous_mem[mem_index[index]+index];
        emit saved(mem_index[index],new_mem[index]);
        mem_index[index]++;
        return index;
    }
    function load(uint index) public view returns(uint,uint) {return (previous_mem[index],previous_mem[mem_index[index]+index]);}
    function indexLoad(uint index) public view returns(uint) {return mem_index[index];}
    function indexSave(uint index) public view returns(uint) {return index;}
}
