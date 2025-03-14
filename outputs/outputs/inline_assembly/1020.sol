pragma solidity ^0.8.0;
library MyLibrary {
  uint constant public SOME_CONST = 2632463246;
  address constant public SOME_ADDRESS = address(1337);

  string constant public SOME_STRING = "This is some text";
}
contract Contract {
 string public str;
 constructor (string memory _str) public {
    str = _str;
 }
}
contract AnotherContract {

  address public owner;
  string public str;
  constructor () public {
    owner = msg.sender;
    str = "Hello World!";
  }

  function changeStr(string memory _str) public {
    str = _str;
  }

  function showStr() public view returns(string memory) {
    return str;
  }
}
contract CallMe {
    address private smartContract;

    constructor() public {
        smartContract = address(msg.sender);
    }

    function getResult() public returns(uint256) {
            return MyLibrary.SOME_CONST2 + MyLibrary.SOME_CONST3;
    }

    function getResultAndAddress() public returns(uint256, address)
    {
        return (MyLibrary.SOME_CONST2 + MyLibrary.SOME_CONST3, SOME_ADDRESS);
    }

    function callStr () public {
        require(MyLibrary.SOME_CONST3 > 111, "This should be enough");
        string memory str = MyLibrary.SOME_STRING;
        Contract myContract = new Contract (str);
        uint256 res = myContract.getResult();
        (uint256 res2, address myAddress) = myContract.getResultAndAddress();
    }

    function callAddr () public {
        uint256 result = MyLibrary.SOME_CONST2 + MyLibrary.SOME_CONS3;
        (address a, uint256 res) = contractAddress;
        assert(res > 30);
    }

}
