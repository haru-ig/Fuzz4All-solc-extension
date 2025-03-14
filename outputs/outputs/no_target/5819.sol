pragma solidity ^0.8.0;
contract C4 {
    mapping(uint8 => uint8) mem_;
    type int_ = int;
    function get(int_) external view returns(uint8) {
        uint8 fred = mem_[x];
        uint8 fred2 = int_(y);
        uint8 fred3 = memory_.get(5);
        uint8 fred4 = memory_.get(4);
        uint8 fred5 = memory_.get("5");
        uint8 fred6 = memory_.get(uint160(a));
        uint8 fred7 = memory_.get(uint(2**1000));
        uint8 fred8 = memory_.get(address(0x0));
        uint8 fred9 = memory_.get(memory_);
    }
    function set(int_ i) public {
        setInt((x)0,100,i);
        setInt(10,0,i);
        setInt(51,200,i);
        setInt(20,255,i);
        setInt(0,uint8(101),i);
        setInt(8,uint8(65),i);
    }
    function setUint(uint8 x) public {
        memory_.write(0,x);
        setInt(x,uint8(65),i);
    }
    function setInt(uint r,uint16 i,int_) public {
        memory_.write(r,i);
        setIntMem_.write(i,x);
        setIntMem_.write(uint2(x),100);

        memory_.write(15,address(this));

        setUint2(35,uint2(uint8(65)));
    }
    function mapGetset(uint256 k) public view returns(uint8 v){
        uint8 x;
        memory_.read(k,x);
    }
    function getIntMem(int_) public view returns(int_ m){
        return int_(memory_.get(uint8(x)));
    }
    function getUintMem(uint _) public view returns(uint2 m){
        uint2 x;
        memory_.read(uint2(uint8(x))-1,x);
        uint2 x2;
        memory_.read(35,x2);
    }
    function setUint2(uint256 k,uint2 ) public {
        memory_.write(k,x);
        setIntMem_.write(x,100);

        memory_.write(15,address(this));

        setUintMem_write(uint2(uint8(65)),i);
    }
