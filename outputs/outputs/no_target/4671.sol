pragma solidity ^0.8.0;
contract C {
bool x;
bool y;
address a;
constructor()public {
x=true;
y=2;
a=0;
}
function f() private view returns (bool) {
x=a==10&&y==9;
return x;
}
}

pragma solidity ^0.8.0;
contract C {
bool x;
constructor()public {
y=true;
}
event E(int);
function f() private view returns (bool) {
x=y==0;
y=x&y&x;
if(x) {
emit E(9);
}
if (!y) x=10==0;
}
}
