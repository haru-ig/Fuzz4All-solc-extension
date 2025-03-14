pragma solidity ^0.8.0;


let mutator = new Mutator();



let raw_msg_data = mutator.call_data();
console.log(raw_msg_data);
console.log(mutator.call_(
    {from: 0x0,
       data: raw_msg_data
    },
    "25 Ether"));
