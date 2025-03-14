pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutated
{
    bytes32 public  z;
    bytes32 public  zmodified;
 }

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract failingmutated
{
    bytes32 public  z;
    bytes32 public  zmodifed;
    function modifed() public payable {
        z = 0xACEDBEEF;
        require(msg.value == 1 ether);
        zmodified = z;
    }

    function updated() public returns(bool modified)
    {
        modified = 1 == 1;
        modified = true;
        assert(modified);
    }

    function failed() public {
        zmodifed = 0xACEDBEEF;
    }
}
