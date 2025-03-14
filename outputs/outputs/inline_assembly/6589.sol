pragma solidity ^0.8.0;
uint256 public a;
uint256 public b;
uint256 public c;
uint256 public d;
uint256 public e;
function doSomething() public {
    a += 1;
    b += ~a;
    b += 10;
    b *= 2;
    c += a;
    d += b;
    e += c;
    e -= 17;
}
