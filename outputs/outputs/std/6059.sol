pragma solidity ^0.8.0;
interface IArray{
    event Change(uint index,uint value);
    event Remove(uint index);
    function get(uint index) external view returns (uint);
    function getAddressOf(uint  ) external view returns (address);
}

contract Main{
       event NewAddress(uint id,uint addres);
   modifier onlyOneAddress(uint num1, uint num2){
       require(num1+0 < num2,"Too many addresses" );
            _;
        }


            _;


    contract Array is IArray0{
    address my_address = 0x26B2274912EC263FAef0fD15419aB9030B1281c7;
    uint count;
    uint[] array;

     function append (uint x) public override onlyOneAddress(count, count+1){
     count++;
     array.push( x );
    }
    function remove (uint x) public onlyOneAddress(count,count+1){
    count--;
     for(uint i=x;i<count;i++){
        uint elem = array[x];
        array[x]=array[i];
        array[i]=elem;
    }
}
    string name = "contractArray";

    function main() public{
      uint x =0;
      array.length;
      array[0]=5;
      array.length;
      for(uint i=0;i< array.length;i++){
           x = array[i];
      x=x+i;
           array[i]=x;
      }
      array.length;
      x = array[array.length-1];
      array.length;
      x=5;
      array[0]=6;
      array[array.length-1]=6;
         uint x = array[0];
         x=x+1;
         for(uint i=0;i<100;i++){
            uint x = array.length;
           uint x = array[array.length-1];
         }
      string memory foo = "Hello World";
        uint x = 1;
        uint a;
        uint b;
    my_address.length;

    x=0;
