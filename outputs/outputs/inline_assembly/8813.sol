pragma solidity ^0.8.0;
contract Test{
    uint x;
    uint y;
}

contract Test1 is Test{

    constructor(){
        contract C {
            function() public{

                assembly {

                    mstore(0x0, 0x1)

                    return(0)
                }
            }
        }
    }


    function update() public view returns(uint){
        return uint(keccak256(abi.encodePacked(y, x, uint(block.timestamp))));
    }
}
