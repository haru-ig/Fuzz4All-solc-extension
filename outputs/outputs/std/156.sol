pragma solidity ^0.8.0;
contract MintingProgram {
    struct DollarValue {
        uint min;
        uint max;
    }

    uint[] d;
    mapping(address => mapping(address => uint)) userBalance;

    event Minted(uint who);

    function mint_one(uint value, uint total, DollarValue memory vals) public {
        uint myval = mint_if_bigger(value, total, vals.min);
        userBalance[msg.sender][msg.sender] += myval;
        d.push(myval);
        emit Minted(myval);
        }
}
contract WhipProgram {
    function whip(Uint[25] memory usds) public {   }
}
