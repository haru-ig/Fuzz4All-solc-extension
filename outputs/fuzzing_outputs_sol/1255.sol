pragma solidity ^0.8.0;
contract ContractWithFallback {
        function getReceiver(uint8 index) public pure returns (address) {
                if(index == 2){
                        return address(this);
                }
        }
        function run() public {
                address x = getReceiver(0);
                address z = address(new ModifierEquivalenceModified());
        }
}
