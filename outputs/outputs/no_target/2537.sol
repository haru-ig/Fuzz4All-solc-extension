pragma solidity ^0.8.0;
contract mutationevm0812_v0817 { function test() mut { a = b; a = c; a = d; a = e; a = f; a = g; a = h; a = i; a = j; b = k; b = l; b = m; b = n; b = o; b = p; b = q; b = r; b = s; b = t; b = u; b = v; b = w; b = x; b = y; b = z;c = 0; } }
contract mutationevm0812_v0815 { function test() pure { a = b; a = c; a = d; a = e; a = f; a = g; a = h; a = i; a = j; b = k; b = l; b = m; b = n; b = o; b = p; b = q; b = r; b = s; b = t; b = u; b = v; b = w; c = 0; } }
contract mutationevm0812_v0818 { function test() pure { a = b; a = c; a = d; a = e; a = f; a = g; c = 0; } }

pragma solidity ^0.6;
contract oldstate { constructor() { a = 0; b = 1; c = 2; } uint256 a; uint256 b; uint256 c; } contract oldstate2 { uint256 x; constructor() { x = 0; } } contract oldstate3 { modifier m() { require(false); } function test() modifier m() { return (false); } }contract oldstate5 { constructor() { uint256 x; x = 0; } uint256 x; }contract oldstate3_sol { uint x; constructor() { bytes m = "Hi!"; x = 0; } }contract oldstate4 { bytes32 x; uint256 a; uint256 b; uint256 c; uint256 d; uint256 e; uint256 f; uint256 g; uint256 h; uint256 i; uint256 j; uint256 k; uint256 l; uint256 m; uint256 n
