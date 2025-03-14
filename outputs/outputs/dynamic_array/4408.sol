pragma solidity ^0.8.0;
contract ArrayRevert { uint256 arr[7]; function setArray(uint256 _val) external { arr[0] = _val; } function _badCall(address _addr, uint256 _idx) private { arr[_idx+1] = 42; arr[_addr] = 42; } function test() public view { _badCall(this, 0); assert(arr[0] == 42); } }

pragma solidity ^0.8.0;
contract AssignNoCopy { uint256[] arr; function setArray() public { uint256 _elem; uint256 _idx; arr.length = 7; uint256 _start = 1; for (uint i=0; i<4; i++) { arr[_start] = _elem; _start++; } _elem = 42; _idx = _start; while (_elem > 42) { arr[_idx] = _elem; _elem--; _idx++; } } function test() public view { uint256[] storage s = arr; require(1 == s[0]); require(2 == s[1]); require(3 == s[2]); require(4 == s[3]); require(5 == s[4]); require(6 == s[5]); require(7 == s[6]); } }

pragma solidity ^0.8.0;
contract AssignSameValues { uint256[] a; uint256[] b; function setBoth(uint256 _len) public { a.length = b.length = _len; a[0] = b[0] = 42; } function test() public { uint256[] memory h1 = a; uint256[] memory h2 = b; require(h1[0] == 42); require(h2[0] == 42); } }


pragma solidity ^0.8.0;
contract AssignSameValues2
