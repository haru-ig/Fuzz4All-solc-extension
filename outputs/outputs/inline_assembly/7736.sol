pragma solidity ^0.8.0;
contract L9{
           modifier mod2{
               uint256 x;
               x++;
           }
               function sub3() public {
                uint256 x;
                x = x - 1;
                }
}


pragma solidity ^0.8.0;
contract L10{
           modifier mod2{
               uint256 x;
               x++;
           }
               function sub3() public {
                uint256 x;
                x = x - 1;
                }
}




pragma solidity ^0.8.0;
contract L11{
           struct FunkyStruct{
               uint256 value;
           }

            function getStruct() public returns (FunkyStruct memory){
                returnFunkyStruct();
            }
            function setStruct(FunkyStruct memory x) public {
            }

           function returnFunkyStruct() public returns (FunkyStruct){
               return FunkyStruct(100);
           }
}


pragma solidity ^0.8.0;
contract L12{
           struct FunkyStruct{
               uint256 value;
           }

            mapping (address => FunkyStruct) public mappingOfStructs;

            function getStruct() public returns (FunkyStruct){
                return mappingOfStructs[msg.sender];
            }
            function setStruct() public {
                mappingOfStructs[msg.sender] = FunkyStruct(100);
            }
            function returnStruct() public returns (FunkyStruct memory returns1){
                return mappingOfStructs[msg.sender];
            }
}
