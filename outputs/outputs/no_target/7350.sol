pragma solidity ^0.8.0;
contract BugsAbiCoder{
    function test()internal{

       assembly{
        trypop _ = mload(0)
        mstore(0, add(_))
        }
      }
    }
    }
