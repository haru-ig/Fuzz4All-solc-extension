pragma solidity ^0.8.0;
contract S2 { uint public x; function f() public { x = x.div(12345678901234567890); } }

pragma solidity ^0.8.0;
contract S3 { uint public x; function f() public { x = x / 0x25D124902D153F29A00e08e592606042D6a49Afe; } }

pragma solidity ^0.8.0;
contract S4 { uint public x; function f() public { x = x / 9999999999900000000; } }

pragma solidity ^0.8.0;
contract S5 { uint public x; function f() public { x += x > 0; } }
uint[20] public y;
address[20] public z;
function f() public { require(y[x] < 0); z[x] = address(new S1()); }
function f() public { require(y[x] >= 1); z[x] = address(new S2()); }
function f() public { x = y[x]; x += y[x] >= 3e11; require(x >= 200000000); }
function f() public { x = y[x]; x += y[x] < 0x2147483642AE0823; require(x >= 200000000); }
function f() public { x = y[x] + x == 1? 0 : 1; x += 1 >= y[x]; require(x >= 200000000); }
function f() public { x = y[x]; x += y[x] == 1? 0 : 1; x += 1 >= y[x]; require(x >= 200000000); }
function f() public { x = y[x]; x += y[x] == 1? 0 : -1; x += 1 >= y[x]; require(x >= 200000000); }
function f() public { x = y[
