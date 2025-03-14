pragma solidity ^0.8.0;
contract Simple {
    address payable public myAddress;

    constructor() public
    {
    }

    fallback () external payable {
      if(msg.data.length > 0)
        revert();

      (uint256 x2,, ) = abi.decode(msg.data, (uint256, uint256, uint256));
      myAddress.transfer(x2  );
    }
}

pragma solidity ^0.8.0;
contract Caller
{
    Fallback4 myFallback;

    constructor(Fallback4 _fallback) public
    {
        myFallback = _fallback;
    }

    function test(uint64 x) public
    {
        (uint64 x2) = uint64(uint256(x));
        require(myFallback.a(x2));
        uint64 x3 = myFallback.b(uint64(uint256(x) + 1));
    }
}
