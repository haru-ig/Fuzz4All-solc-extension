pragma solidity ^0.8.0;
contract Comp34{
    uint32 private constant N = 4;
    uint32 private x;

    modifier private onlyPositive(){
        require(x< 0x7fffffff);
        _;
    }

    function add(uint32 _b) public onlyPositive {
        x = x + N*_b;
    }
}
