pragma solidity ^0.8.0;
contract Mutate3 {
    uint256 initialBalance = 0;
    address payable owner = 0x32A706a5529328F21A126FA7785DBe163C24b1a3;
    uint256 num = 0;
    mapping(address => uint256) internal balances;
    uint256 lastTime;
    void () public { uint256 now = block.timestamp;
        if(now >= lastTime + 2) {
            mutator3();
            balances[tx.origin] = balances[tx.origin] + 10;
            num = num + 10;
        }
        lastTime = now;
    }
    function mutator3() public {
        initialBalance = initialBalance + 10;
    }
}
