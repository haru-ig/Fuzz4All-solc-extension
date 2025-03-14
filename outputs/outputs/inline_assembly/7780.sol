pragma solidity ^0.8.0;
contract L12 {
    uint x;
    constructor() public {
        x = x + 2 ether;
    }
    function modify() public {
        x += 2 ether;
    }
}

pragma solidity 0.8.0;







contract mainnet {



    string16 public contract_address = '0x8358090371b0A6d7d10fEED9e3c8238824e56884';


    address public owner;






    function() external payable {}

    function messageReceived (address,bytes memory) public {
        if(msg.value % 1 ether == 0 || owner!= address(0)){


            owner.sendValue(msg.value);


        }
    }
