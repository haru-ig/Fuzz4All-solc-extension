pragma solidity ^0.8.0;
contract NonMutatingContract
    {
      function mutatedFunction()
        public
          pure

        returns (

        address,
        uint
        )
    {
    }
    function mutatedFunction2()
        public
        pure

        returns (

        uint
        )
    {
    }
}


pragma solidity ^0.8.0;
contract NonMutatingContract2
    {
      address
    contractAddresses;

    uint

    function nonMutatedFunction()
        public
          pure

        returns (

        address,
        uint
        )
    {
          address x;
          uint y;


        x;


        y;

        returns (x, y);
    }
}
