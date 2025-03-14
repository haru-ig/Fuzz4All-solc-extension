pragma solidity ^0.8.0;
contract BetterProgramV4{

  modifier only() {

    _;
  }


  constructor() {

  }


  function() external payable {

  }


   event Fallback();
}
contract BetterProgramV5{





  modifier onlyWithCheck {
    if(executed == false){
      X();
      executed = true;
      _;
    }
  }
  function X(){

  }
}
