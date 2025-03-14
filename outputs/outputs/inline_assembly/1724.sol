pragma solidity ^0.8.0;
contract MutatorS15 {
uint256 constant ZERO = 0;
uint256 constant ONE_PLUS = 1+1;
uint256 constant ONE_PLUS_SIX = 2*ONE_PLUS;
uint256 constant SIZE = ONE_PLUS_SIX + 1;
function constantInitializer() public pure {
  assert(SIZE == SIZE);
}

function ratio(address _ownerOne, address ownerTwo, uint256 _amountOne, uint256 _amountTwo) public view returns (uint256, uint256) {
  uint256 denominatorOne = _amountOne - (ONE + ONE_PLUS + ONE_PLUS_SIX);
  uint256 numeratorOne = ownerOne;
  uint256 denominatorTwo = _amountTwo - (ONE_PLUS_SIX * SIZE);
  uint256 numeratorTwo = ownerTwo;
  uint256 res;
  if(denominatorOne > numeratorOne){
    uint256 temp = denominatorOne;
    denominatorOne = numeratorOne;
    numeratorOne = temp;
    }
  if(denominatorTwo > numeratorTwo){
    uint256 temp = denominatorTwo;
    denominatorTwo = numeratorTwo;
    numeratorTwo = temp;
  }
  if(_amountOne >= denominatorOne){
    res = denominatorOne;
  } else{
    res = denominatorOne - numeratorOne;
  }
  if(_amountTwo >= denominatorTwo){
    res = res * denominatorTwo / denominatorOne;
  }else{
    res = res / denominatorTwo + numeratorTwo;
    }
    return(res,res);
}
}

address public tokenOne;

address public tokenTwo;
struct TokenPair {
    /** @dev The token contract we're trading against
