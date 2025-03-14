pragma solidity ^0.8.0;
contract MutatedCaller {
  function mutated() public payable {
    (uint) address(this).balance;
  }
}

pragma solidity ^0.8.0;

contract TestMutatingCaller{
    constructor() public {
        MutatedCaller caller = new MutatedCaller();
        (uint _) = address(caller).balance;
    }
}

contract TestDirectCaller{
    constructor() public {
        (uint _) = 0;
    }
}

contract TestFallbackCaller{
    constructor() public { }

    function fallback() public payable {}
}
