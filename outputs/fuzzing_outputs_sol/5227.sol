pragma solidity ^0.8.0;
contract SimpleMutator is Mutator
{
         address user;
        function c() public {
                user.safecall(this.c());
        }
        function d() public {
                user.safecall(this.d());
        }
}

pragma solidity ^0.8.0;
contract Caller
{
        function c() public {
                address mutatorAddress;
                assembly {
                        mutatorAddress := mload(0x40)
                }
                Mutator mutator = Mutator(mutatorAddress);
                (bool success, bytes memory returnData,) = mutator.m.call{value: 500}("");
                assert(success);
                assert(returnData.length > 3);
                if(bytes(returnData[2].0, 331).0 == bytes4(keccak256(abi.encodePacked("c")))){

                }
        }
}
