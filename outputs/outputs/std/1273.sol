pragma solidity ^0.8.0;




library HelloWorld {



    uint constant programVersion = 1;



    function emit() public pure {
        emit HelloEvent(msg.Sender);
    }



    contract HelloEvent {

      event HelloReceived(address sender);


      modifier onlyHello {
        require(msg.sender == address(this));
        _;
      }


      constructor () {
        emit HelloReceived(address(0));
      }
    }
}
