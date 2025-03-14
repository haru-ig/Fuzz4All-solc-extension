pragma solidity ^0.8.0;
contract ContractWithFallback15 {
   uint constant x = 100;
   function modifier() public {
       uint x0 = x;
       _;
       x = x0;
    }
    function modified() public {
        msg.sender.transfer(x);
    }
}

pragma solidity ^0.8.0;
contract ContractWithFallback2 {
    function fallback() public payable {
        uint  a;
        assembly {
            a := mload(0x40)
        }
        a;
    }
}

pragma solidity ^0.8.0;
contract ContractWithFallback3 {
    function modified() public {
        uint  a = 1;
        assembly {
            a := mload(0x40)
        }
        a;
    }
}
