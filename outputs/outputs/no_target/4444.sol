pragma solidity ^0.8.0;
contract L {
    function myFunction(uint) public pure returns (uint160) {
        return (uint160(uint160(0x01) + uint160(5))) * 2;
    }
}
pragma solidity ^0.8.0;
contract L {
  uint constant ZERO = 0;

contract MyContract {

    void function1() public pure {
      uint160 constant zero = 0;
      function2();
      function2(zero);
      function2(ZERO);
    }

    function function2(uint160 secondParam) public pure {
        require(secondParam == 0);
        string memory myString;
        uint myUint;
        uint160 myUint160;
        address myAddress;

        require(msg.data.length < 100);
        for (uint i = 0; i < msg.data.length; i++) {
            uint8 nextByte = msg.data[i];
            if (nextByte == 0x80)
                uint160 myUint2 = 0x10000 + ((uint8)nextByte - 0x80) * (uint160(uint160(0)x01));

        }
    }
}

}
pragma solidity ^0.7.0;
contract A {
    event Greeting(uint a);
    function f() public view returns (uint) {
        return msg.value;
    }
    function g() public view returns (uint) {
        Greeting(10);
        return msg.value;
    }
}

pragma solidity ^0.8.0;
contract A{
   event Greeting(uint a);
  function f() public view returns (uint) {
    return msg.value;
  }

    event greeting(uint) public;
    function g() public view returns (uint) {
        greeting(10);
        return msg.value;
    }


}

pragma solidity ^0.5.0;


contract CSP {
    enum State { Unknown, ReadyToVote }
    State public nextState = State.ReadyToVote;

    function requestVote(uint) public returns (bool) {

        setNextState(State.ReadyToVote);
        return true;
    }

    function setNextState(State) public {
        nextState = _;
    }

    State _state;
    State public finalState;

    modifier onlyWhileState(State _nextState) {
        if (_nextState == _state) {
            _;
        } else {
            revert();
        }
    }

    modifier ifState(State _nextState) {
        require(_nextState == _state);
        _;
    }


    function changeNextState(State _nextState) internal
