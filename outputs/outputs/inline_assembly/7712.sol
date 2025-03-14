pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract L20 {


    struct data_t {
        uint val1;
        uint val2;
        uint val3;
    }

    uint public totalSupply = 0;
    uint public value = 5;
    data_t[3] data = [data_t(1,5,6),data_t(2,5,6),data_t(3,5,6)];







    constructor(){
        totalSupply[msg.sender] = data[0].val1;
        emit Transfer(msg.sender, msg.sender, totalSupply);
    }
}
