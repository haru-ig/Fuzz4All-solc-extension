pragma solidity ^0.8.0;

contract NameContract{
    address public owner;
    constructor(){
      owner = msg.sender;
    }

    function method(){
      owner = msg.sender;
    }

      modifier modifier1(){
        uint counter1;
      while(counter1 < 4500);
      if (counter1 == 1){continue;
        throw ;
      }
    }

}

pragma solidity 0.8.0;

contract NameContract{
    uint public value = 0;
    constructor(){
      value = 6;
    }

    function method(){
      value = 3;
      throw ;
    }

      modifier modifier2(){
        uint counter2;
      while(counter2 < 4500);
      if (counter2 == 2){continue;
        throw ;
      }
    }


      modifier modifier3(){
        uint counter3;
      while(counter3 < 4500);
      if (counter3 == 3){continue;
        throw ;
      }
    }


      modifier modifier4(){
        uint counter4;
      while(counter4 < 4500);
      if (counter4 == 4){continue;
        throw ;
      }
    }

}
