pragma solidity ^0.8.0;
contract Contract11Mut5 {
    event Fulfilled(address owner, uint256 indexed value);
    uint256 public num;
    constructor (){
        num = 1;
        num = 2;
    }
    function mutated11Mut4() public {
        num = 3;
        num = 4;
    }
}
contract Caller {
    Contract11Mut5 c;
    event Fulfilled(uint256 indexed value);
    constructor () public {
        c = new Contract11Mut5();
        c.Fulfilled.emit(msg.value);
    }
    function fallback() public payable {
        c.fulfilled11Mut4();
    }
}
