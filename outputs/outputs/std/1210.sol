pragma solidity ^0.8.0;
contract ArrayMath {
   function findmin(int[] memory _arr) public pure returns(uint8){
     uint8 minValue = 255;
     uint8 minIndex = 0;
     for (uint8 indx = 0; indx< _arr.length; ++indx)
        if (_arr[indx] < minValue)
        {
           minValue = _arr[indx];
           minIndex = indx;
        }
     return minIndex;
   }
   function findmax(int[] memory _arr) public pure returns(uint8){
       uint8 maxValue = 0;
       uint8 highestIndex = 0;
       for (uint8 indx = 0; indx < _arr.length; ++indx)
        if(_arr[indx] > maxValue)
        {
           maxValue = _arr[indx];
           highestIndex = indx;
        }
      return highestIndex;
   }
   function findsum(int[] memory _arr) public pure returns(uint8){
       uint8 sum = 0;
       uint8 highestIndex = 0;
       for (uint8 indx = 0; indx < _arr.length; ++indx)
        sum += _arr[indx];
      return sum + 1;
   }
   function shuffle(int[] memory _arr) public pure returns(int[]) {
      uint8 lowestIndex = findmin(_arr);
      uint8 highestIndex = findmax(_arr);
      (uint256 x, uint256 y) = getIndices(lowestIndex, highestIndex);
      uint8 j = 0;
      for (uint8 i= lowestIndex; i <= highestIndex ; i++) {
         (uint256 _xj, uint256 _yj) = getIndices(i);
         int memory temp = _arr[i];
         _arr[i] = (_arr[_xj] > _arr[_yj])? (_arr[_xj]) : (_arr[_yj]);
         _arr[_xj] = temp;
         _arr[_yj] = 0xFF;
         j = j + 1;
      }
     return _arr;
    }
   function getIndices(uint8 _min, uint8 _max)
     public
     pure
     returns (uint256, uint256){
        uint256 x = 1 + (uint256(_max - _min) + 1)/2;
        uint256 j = 2;
        for (uint256 i=0; i < j; i++)
          x *= 2;
        x = uint256(uint8(_min + uint8(x / 2)));
        return (x, uint256(_max - x));
     }
   function swapIndex(int[] memory _arr, uint8 _x, uint8 _y
