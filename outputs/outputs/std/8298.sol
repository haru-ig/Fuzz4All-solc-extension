pragma solidity ^0.8.0;
contract Array {
    int256[ ] public array;
    function push() public nonpayable returns(int256){
        array.push(1);
        return 1;
    }
}
