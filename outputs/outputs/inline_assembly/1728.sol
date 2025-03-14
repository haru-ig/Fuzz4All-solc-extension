pragma solidity ^0.8.0;




contract MutatorS15 {
uint256 constant ONE = 1;
uint256 constant ONE_PLUS = ONE + 1;
uint256 constant SIZE = ONE_PLUS;
function constantInitializer() public pure {
  assert(SIZE == 1);
}
address payable a;
    function mutate() public {

      a.sendValue(1 ether);
    }
}

contract MutatorS16 {

uint internal constant SIZE = 9;

  function mutate() public {


    address payable s = msg.value;

    uint index = 73;
    s.transfer(1 ether);

  }
}

pragma solidity ^0.8.0;
contract MutatorS18 {
    struct Person {
        uint32 id;
        function deposit(uint _amount) public;
    }
    Person[] public people;
    uint256 total;
    uint256 public constant AMOUNT = 4 ether;

    constructor() {
        total = AMOUNT;
    }

    function() payable {


        people.push(Person({ id: people.length, address: msg.sender }));
        total += AMOUNT;
    }

    modifier checkBalance() {
        require(address(this).balance >= total, "Not enough to cover");
        _;
    }
}
 /* A lot of contract owners are lazy at coding
