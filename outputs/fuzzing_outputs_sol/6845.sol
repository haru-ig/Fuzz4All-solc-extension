pragma solidity ^0.8.0;
contract Receiver {
    uint x;
    uint y;
    uint counter;




    modifier always {
        if (msg.value!= 0) _;
        counter = 2;
    }
    constructor() {
        x = 0;
        y = 2;
    }



    receive() payable {
        counter = 4;
    }
}
contract Caller is Receiver {

    uint constant value = 1;


    fallback() payable external {



        self.value = value;
    }
}
