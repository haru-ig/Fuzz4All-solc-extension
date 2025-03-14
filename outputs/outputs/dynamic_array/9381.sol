pragma solidity ^0.8.0;
contract Arrays1 {
    function append(uint _a) public {
        a1.push(_a);
    }
    function append2(uint _a) external{
        a2.push(_a);
    }
    function read() public view returns (uint){
        return a1.length;
    }
    function read2() public view returns (uint){
        return a2.length;
    }
}
