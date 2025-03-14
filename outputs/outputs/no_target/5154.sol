pragma solidity ^0.8.0;
contract SimpleExample2 {
    uint256 public counter;

    constructor () public {
        counter = 0;
        require(counter == 0);
    }
}


address addr1= 0xce231F89c9Ce60A93EBE3794c096d2c942bA0F6c;
address addr2= 0xC61eD7A5081D834516a8496B12c7D018946E5891;

contract SimpleExample3 {
    uint256 public counter;
    constructor () public {
        counter = 0;
    }

    function increment() external {
        uint256 value = 0;
        (tx.origin,value) = (msg.sender,77);
        value = (value + 1);
    }
}

contract SimpleExample4 {
    uint256 public counter;
   constructor () public {
        counter = 0;
    }

   function increment() public {
       bool ok= false;
       (tx.origin,ok) = (msg.sender,true);
       require(tx.origin == addr1);
       require(ok);
       (tx.origin,ok) = (msg.sender,true);
       require(ok);
       require(tx.origin == addr2);

       uint256 value = 0;
       (tx.origin,value) = (msg.sender,77);
       ok = (value + 1 == 77);
       ok = ok && (value == 7);


        require((value > 77 ) && (value < 78) && ok);
   }
}
