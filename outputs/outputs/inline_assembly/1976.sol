pragma solidity ^0.8.0;
contract NewY4 {
uint x;
uint z;
uint m;
uint n;
function f(uint x){
uint z = x & 2 | 3;
if x > 1 && x < 10 {
if (x % 2 == 0 && 7 > 5 && 8 == 7) {
return true;
}
return false;
}
return true;
}
}
}

pragma solidity ^0.8.0;
contract NewY5 {
    uint256 constant uintValue = 655347265;
    uint256 public x;
    uint256 public y;

    function foo(){
        if (this > uintValue) {
            x = (y+10);
            y += 2;
        }
        else {
