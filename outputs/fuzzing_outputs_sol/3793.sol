pragma solidity ^0.8.0;
contract Caller {
    constructor() public {
        contract Example6;
        Example6 = Example17(0);
        uint256 result =Example6.example17(1);
        Caller _caller;
        assembly {
            switch result {
                case 1{
                    _ = call(1, _caller, 0, 0)


                }
                default{



                    address(Caller).call(0, 0)
                }
            }
        }
   }
}
