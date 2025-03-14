pragma solidity ^0.8.0;
contract MutateSemantic6Called {
    function mutate(address payable a) public {
        a.transfer(a.balance);
    }
}

contract MutateSemantic6 {
  function() public {
    MutateSemantic6Called storage caller = MutateSemantic6Called(0xa5a5a5a5a5a5A5A5A5A5A5a5a5a5A5a5A5A5A5A5a5a5a5A5A5a5a5A5a5A5A5A5a);
    caller.mutate;
  }
}
