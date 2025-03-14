pragma solidity ^0.8.0;
contract semanticallyEquiv5 {
    function() external pure returns (uint)
    {   return 10;
    }
}

contract semanticallyEquiv6{
    constructor() public {
    }
    function() public returns () {   return true;  }
}
