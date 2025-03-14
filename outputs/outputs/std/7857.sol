pragma solidity ^0.8.0;
contract Storage {
    uint a;
    function read() public view returns(uint){
        return a;
    }
    function write(uint x) public {
        a = x;
    }
}

pragma solidity ^0.8.0;
contract Storage {
    uint a;
    function read() public view returns(uint){
        return a;
    }
    function write(uint x) public {
        a = mmx;
    }
}
