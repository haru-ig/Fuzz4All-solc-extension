pragma solidity ^0.8.0;
contract IAddressable {
    function revert(uint256 value) external;
}



pragma solidity ^0.8.0;


 contract TokenFactory {

     address public C;
     uint256 public CValue=0xffffffffffffffffffffffffffffffffffffffffff;

     mapping(address =>uint256) private tokens;

     event TokenSent(address token, uint256 value);

     constructor (){

         address(this).transfer(0);
     }


     function transfer(address _to, uint256 _value) public {
         require(IAddressable(_to).revert(_value)==0);
         tokens[msg.sender] += _value;
         if(CValue>0){
             _to.transfer(CValue);
         }
         emit TokenSent(msg.sender, _value);
     }
 }
