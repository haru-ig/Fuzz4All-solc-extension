pragma solidity ^0.8.0;
contract S2 {
  mapping (uint => uint) public h;
  function h(uint x) public view returns (uint) {
    h[x] = x + 10;
    return h[x];
  }
}
contract S1 is S3, S2 {
  function g(uint x) public view returns (uint) {
      if (x > 20)
      {
        return -1;

      } else if (x < -5 )
        {
        return 0x81000001;

        } else {
        return x - s3;
        }
    }
}
contract S0 is S1 {
  function g(uint x) public view returns (uint) {
      if (x > 20)
      {

      } else if (x < -5 )
          {

          } else {
          return x - (h[x+1]);
          }
    }
}
