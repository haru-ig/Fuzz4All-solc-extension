pragma solidity ^0.8.0;
contract Memory{

  uint8 myArr [2] = [1, 2];
  function setMyArr(uint x){
    myArr[2] = uint8(x);
  }
  function getMyArr() public view returns (uint){
    return uint(myArr[2]);
  }
}
contract Array{

  uint[] arr;
  function getArr() public view returns (uint[]){
    return arr;
  }
  function setArr(uint [] memory c){
    arr = c;
  }

  function arrModified(uint x, uint y){
    arr[x] = y;
  }
}


pragma solidity ^0.8.0;
contract Main{
  mapping (address => uint) balances;
  function main() public {


    balances[msg.sender] = 100;
    uint bal = 100;
  }
  function transferEther(address to, uint a) public {

    balances[to] += a;
    balances[msg.sender] -= a;
  }
}
contract Multiprecision{
  function mul() public pure{
    uint8 i = 128;


    uint8 mulRes = uint8((1e10 + 2e20) / uint8(i));
  }
  function intDiv() public pure{
    uint i = 128;
    uint mulRes = i / 1;
  }
  function bitwiseDiv() public pure{
    uint i = 128;
    uint mulRes = ~uint(i / 1)
