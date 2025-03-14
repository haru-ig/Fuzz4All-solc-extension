pragma solidity ^0.8.0;
contract Mutated {
    constructor(address _to) {
       bytes memory msg = "100 200 300";
       bytes memory res = abi.decode(msg, (address,address,address));
       (msg, _to, res) = (res,msg.origin,msg);
       _to.call(msg);
    }
    receive() external payable { }
}
